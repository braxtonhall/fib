;; iterative fib(n) in web assembly text format (wat)
;; this gets compiled to fib.wasm binary
;; and gets fetched via a data URL in index.js
(module
	(export "fib" (func $fib))
	(func $fib (param $n i32) (result i32)
	(local $last i32)
	(local $sum i32)
	(local $i i32)
	(local $tmp i32)
	(if
		(i32.lt_s
			(local.get $n)
			(i32.const 2)
		)
		(return (local.get $n))
	)
	(local.set $last (i32.const 0))
	(local.set $sum (i32.const 1))
	(local.set $i (i32.const 2))
	(local.set $n (i32.add (local.get $n) (i32.const 1)))
	(loop $loop
		(local.set $tmp (local.get $sum))
		(local.set $sum
			(i32.add
				(local.get $sum)
				(local.get $last)
			)
		)
		(local.set $last (local.get $tmp))
		(local.set $i
			(i32.add
				(local.get $i)
				(i32.const 1)
			)
		)
		(br_if $loop
			(i32.lt_s
				(local.get $i)
				(local.get $n)
			)
		)
	)
	(return (local.get $sum))
	)
)
