module type BASIS =
  sig
    type t
    val one : t
    val out : t -> int
    val to_string : t -> string
  end

module type MONOIDIC =
  sig
    include BASIS
    val concat : t -> t -> t
  end

(* Single Tuple, Multiple Data *)
module STMD : MONOIDIC =
  struct
    type t = int * int * int * int

    let one = (1, 1,
               1, 0)

    let out (_, _, _, x) = x

    let to_string (a,b,c,d) = "(" ^ (string_of_int a) ^ ", "
                                  ^ (string_of_int b) ^ ", "
                                  ^ (string_of_int c) ^ ", "
                                  ^ (string_of_int d) ^ ")"

    let concat (a11, a12, a21, a22) (b11, b12, b21, b22) =
      let muladd a x b y = (a*x) + (b*y) in
      (muladd a11 b11 a12 b21,
       muladd a11 b12 a12 b22,
       muladd a21 b11 a22 b21,
       muladd a21 b12 a22 b22)
  end

module MkLinear(M : MONOIDIC) =
  struct
    let iter n =
      let rec loop n acc =
        match n with
        | 0 -> acc
        | k -> loop (k-1) (M.concat M.one acc)
      in
        M.out (loop n M.one)

  end

module MkLog(M : MONOIDIC) =
  struct
    let iter n =
      let rec loop y x k =
        if k = 0 then y
        else if k mod 2 = 0 then loop y (M.concat x x) (k/2)
                            else loop (M.concat y x) (M.concat x x) ((k-1)/2)
      in
        M.out (loop M.one M.one n)
  end

module Kobold = MkLinear(STMD) (* You no take candle! *)
module Orc = MkLog(STMD) (* Mok'ra *)

let%test _ = Kobold.iter 10 = 55
let%test _ = Kobold.iter 0 = 0
let%test _ = Orc.iter 0 = 0
let%test _ = Orc.iter 1 = 1
let%test _ = Orc.iter 2 = 1
let%test _ = Orc.iter 3 = 2
let%test _ = Orc.iter 4 = 3
let%test _ = Orc.iter 5 = 5
let%test _ = Orc.iter 10 = 55
