(*
This is an MetaOCaml implementation of a Generalised Fibonacci Function (gfib n a b) 
where gfib is the function's name, n is a non-negative integer, and a and b are integers. 

    gfib n a b = a                                        when n = 0
    gfib n a b = b                                        when n = 1
    gfib n a b = (gfib (n - 1) a b) + (gfib (n - 2) a b)  when n > 1
*)

(* Unstaged program, for reference *)
let rec gfib_unstaged n a b = if n = 0 then a else gfib_unstaged (n - 1) b (a + b)

(*
Assume n is known a priori, and a and b are provided at runtime. Stage the above program accordingly.  
*)

(* Staged programs *)
let rec gfib n a b = if n = 0 then a else gfib (n - 1) b (.<.~a + .~b>.)
let rec gfib_main n = .<fun a b -> .~(gfib n .<a>. .<b>.)>.

(*
Assume n is known to be 10 a priori. Specialise the staged programs. 
*)
let gfib_10 = gfib_main 10 

(*
Try gfib_10 on a few instances of a and b at runtime. 
   #  open Runcode;;
   #  run gfib_10 1 1;;
   #  run gfib_10 12 23;; 
   #  run gfib_10 ~-1 ~-2;;
*)


(*
README
1. Generalised Fibonacci Function is one of the most well-known example in the community of multi-stage programming. 
2. This example has been tested on BER MetaOCaml. If you are unfamiliar to MetaOCaml, follow these steps: 
   (1) Install BER MetaOCaml
   (2) In your Terminal, go the directory of this file and run:
       %  metaocaml
       #  #use "gfib.ml";;
   (3) Try gfib_10 on a few instances of a and b at runtime:  
       #  open Runcode;;
       #  run gfib_10 1 1;;
       #  run gfib_10 12 23;; 
       #  run gfib_10 ~-1 ~-2;;
   (4) Exit:
       #  exit 0;; 
3. Can you rewrite the programs (both unstaged and staged) for better runtime performance? 
*)
