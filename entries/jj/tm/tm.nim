# A simple Turing machine simulator implemented in Nim.

import std/enumerate

type Symbol = enum
  `_`, `$`, `X`, `0`, `1`, `0*`, `1*`,
  noop

type Tape = seq[Symbol]

type Direction = enum
  L, R, S

type State = enum
  ca, cb, cc, cd, ce, cf, cg, ch, ci
  sa, sb, sc, sd,
  aa, ab, ac,
  aaa, aab, aac, aad, aae, aaf,
  aba, abb, abc, abd, abe, abf,
  ba, bb, bc,
  baa, bab, bac, bad, bae, baf,
  bba, bbb, bbc, bbd, bbe, bbf,
  za, zb, zc, zd

type Transition = object
  current_state: State
  read_symbol: seq[Symbol]
  next_state: State
  write_symbol: Symbol
  move_direction: Direction

# convenience constructor
func δ(a: State, b: seq[Symbol], c: State, d: Symbol, e: Direction): Transition =
  return Transition(current_state: a, read_symbol: b, next_state: c, write_symbol: d, move_direction: e)

# safe get for an infinite tape: pretty, right?
func get(tape: var Tape, i: int): Symbol =
  for j in tape.len .. i:
    tape.add(`_`)
  return tape[i]

# safe set for an infinite tape
func set(tape: var Tape, i: int, s: Symbol) =
  for j in tape.len .. i:
    tape.add(`_`)
  tape[i] = s

let turing_machine = @[
  δ(ca, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], cb, `$`, R),
  δ(cb, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], cc, `0`, R),
  δ(cc, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], cd, `$`, R),
  δ(cd, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], ce, `1*`, R),
  δ(ce, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], cf, `$`, R),
  δ(cf, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], cg, `1`, R),
  δ(cg, @[`_`, `$`, `X`, `0`, `1`, `0*`, `1*`], ch, `$`, R),
  δ(ch, @[`$`, `X`, `0`, `1`, `0*`, `1*`], ci, `_`, R),
  δ(ch, @[`_`], sa, noop, S),

  δ(sa, @[`_`, `X`, `0`, `1`, `0*`, `1*`], sa, noop, L),
  δ(sa, @[`$`], sb, noop, L),
  δ(sb, @[`_`, `X`, `0*`, `1*`], sb, noop, L),
  δ(sb, @[`0`], sc, `0*`, R),
  δ(sb, @[`1`], sc, `1*`, R),
  δ(sb, @[`$`], sd, noop, R),
  δ(sc, @[`$`, `X`, `0`, `1`, `0*`, `1*`], sc, noop, R),
  δ(sc, @[`_`], sa, `X`, L),
  δ(sd, @[`$`, `X`, `0`, `1`], sd, noop, R),
  δ(sd, @[`0*`], sd, `0`, R),
  δ(sd, @[`1*`], sd, `1`, R),
  δ(sd, @[`_`], aa, noop, L),

  δ(aa, @[`_`, `X`, `0`, `1`, `0*`, `1*`], aa, noop, L),
  δ(aa, @[`$`], ab, noop, L),
  δ(ab, @[`_`, `X`, `0*`, `1*`], ab, noop, L),
  δ(ab, @[`0`], aaa, `0*`, L),
  δ(ab, @[`1`], aba, `1*`, L),
  δ(ab, @[`$`], ac, noop, R),
  δ(ac, @[`$`, `X`, `0`, `1`, `0*`, `1*`], ac, noop, R),
  δ(ac, @[`_`], sa, `$`, R),

  δ(aaa, @[`_`, `X`, `0`, `1`, `0*`, `1*`], aaa, noop, L),
  δ(aaa, @[`$`], aab, noop, L),
  δ(aab, @[`0*`], aac, `0`, R),
  δ(aac, @[`$`, `X`, `0`, `1`, `0*`, `1*`], aac, noop, R),
  δ(aac, @[`_`], aad, noop, L),
  δ(aad, @[`_`, `$`, `0`, `1`, `0*`, `1*`], aad, noop, L),
  δ(aad, @[`X`], aa, `0`, L),
  δ(aab, @[`1*`], aae, `1`, R),
  δ(aae, @[`$`, `X`, `0`, `1`, `0*`, `1*`], aae, noop, R),
  δ(aae, @[`_`], aaf, noop, L),
  δ(aaf, @[`_`, `$`, `0`, `1`, `0*`, `1*`], aaf, noop, L),
  δ(aaf, @[`X`], aa, `1`, L),
  δ(aab, @[`_`, `X`, `0`, `1`], aab, noop, L),

  δ(aba, @[`_`, `X`, `0`, `1`, `0*`, `1*`], aba, noop, L),
  δ(aba, @[`$`], abb, noop, L),
  δ(abb, @[`0*`], abc, `0`, R),
  δ(abc, @[`$`, `X`, `0`, `1`, `0*`, `1*`], abc, noop, R),
  δ(abc, @[`_`], abd, noop, L),
  δ(abd, @[`_`, `$`, `0`, `1`, `0*`, `1*`], abd, noop, L),
  δ(abd, @[`X`], aa, `1`, L),
  δ(abb, @[`1*`], abe, `1`, R),
  δ(abe, @[`$`, `X`, `0`, `1`, `0*`, `1*`], abe, noop, R),
  δ(abe, @[`_`], abf, noop, L),
  δ(abf, @[`_`, `$`, `0`, `1`, `0*`, `1*`], abf, noop, L),
  δ(abf, @[`X`], ba, `0`, L),
  δ(abb, @[`$`], abc, noop, R),
  δ(abb, @[`_`, `X`, `0`, `1`], abb, noop, L),

  δ(ba, @[`_`, `X`, `0`, `1`, `0*`, `1*`], ba, noop, L),
  δ(ba, @[`$`], bb, noop, L),
  δ(bb, @[`_`, `X`, `0*`, `1*`], bb, noop, L),
  δ(bb, @[`0`], baa, `0*`, L),
  δ(bb, @[`1`], bba, `1*`, L),
  δ(bb, @[`$`], bc, noop, R),
  δ(bc, @[`$`, `X`, `0`, `1`, `0*`, `1*`], bc, noop, R),
  δ(bc, @[`_`], za, noop, L),

  δ(baa, @[`_`, `X`, `0`, `1`, `0*`, `1*`], baa, noop, L),
  δ(baa, @[`$`], bab, noop, L),
  δ(bab, @[`0*`], bac, `0`, R),
  δ(bac, @[`$`, `X`, `0`, `1`, `0*`, `1*`], bac, noop, R),
  δ(bac, @[`_`], bad, noop, L),
  δ(bad, @[`_`, `$`, `0`, `1`, `0*`, `1*`], bad, noop, L),
  δ(bad, @[`X`], aa, `1`, L),
  δ(bab, @[`1*`], bae, `1`, R),
  δ(bae, @[`$`, `X`, `0`, `1`, `0*`, `1*`], bae, noop, R),
  δ(bae, @[`_`], baf, noop, L),
  δ(baf, @[`_`, `$`, `0`, `1`, `0*`, `1*`], baf, noop, L),
  δ(baf, @[`X`], ba, `0`, L),
  δ(bab, @[`_`, `X`, `0`, `1`], bab, noop, L),

  δ(bba, @[`_`, `X`, `0`, `1`, `0*`, `1*`], bba, noop, L),
  δ(bba, @[`$`], bbb, noop, L),
  δ(bbb, @[`0*`], bbc, `0`, R),
  δ(bbc, @[`$`, `X`, `0`, `1`, `0*`, `1*`], bbc, noop, R),
  δ(bbc, @[`_`], bbd, noop, L),
  δ(bbd, @[`_`, `$`, `0`, `1`, `0*`, `1*`], bbd, noop, L),
  δ(bbd, @[`X`], ba, `0`, L),
  δ(bbb, @[`1*`], bbe, `1`, R),
  δ(bbe, @[`$`, `X`, `0`, `1`, `0*`, `1*`], bbe, noop, R),
  δ(bbe, @[`_`], bbf, noop, L),
  δ(bbf, @[`_`, `$`, `0`, `1`, `0*`, `1*`], bbf, noop, L),
  δ(bbf, @[`X`], ba, `1`, L),
  δ(bbb, @[`_`, `X`, `0`, `1`], bbb, noop, L),
  δ(bbb, @[`$`], bbc, noop, R),

  δ(za, @[`_`, `X`, `0`, `1`, `0*`, `1*`], za, noop, L),
  δ(za, @[`$`], zb, noop, R),

  δ(zb, @[`$`, `X`, `0*`, `1*`], zb, noop, R),
  δ(zb, @[`0`], zc, `1`, R),
  δ(zb, @[`1`], zb, `1`, R),
  δ(zb, @[`_`], zd, `1`, R),

  δ(zc, @[`$`, `X`, `0*`, `1*`], zc, noop, R),
  δ(zc, @[`0`], zc, `0`, R),
  δ(zc, @[`1`], zb, `0`, R),
  δ(zc, @[`_`], zd, `0`, R),

  δ(zd, @[`_`], sa, `$`, R)
]

proc print(state: State, tape: Tape, position: int) =
  stdout.write($state)
  for i, s in enumerate(tape):
    if i == position:
      stdout.write("[" & $s & "]")
    elif s == `$`:
      stdout.write(" ")
    else:
      stdout.write($s)
  stdout.write("\n")

var state = ca
var position = 0
var tape = @[`_`]

proc step() =
  # print(state, tape, position)
  for δ in turing_machine:
    if state == δ.current_state and tape.get(position) in δ.read_symbol:
      state = δ.next_state
      if δ.write_symbol != noop: tape.set(position, δ.write_symbol)
      if δ.move_direction == L: position.dec
      elif δ.move_direction == R: position.inc
      return
  echo "Invalid state! crashing"
  quit()

while true:
  step()
