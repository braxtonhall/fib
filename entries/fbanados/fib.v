Require Import Coq.Arith.Wf_nat. (* import strong induction on naturals *)
Require Import Lia. (* Linear Integer Arithmetic solver *)

(* First, simple specification *)

Fixpoint fib_simpl (n : nat) {struct n} : nat :=
  match n with
  | 0 => 1
  | S n => match n with
           | 0 => 1
           | S m => fib_simpl n + fib_simpl m
           end
  end.

Example fib_3 : (fib_simpl 2 = 2). reflexivity. Qed.
Example fib_4 : (fib_simpl 3 = 3). reflexivity. Qed.
Example fib_5 : (fib_simpl 4 = 5). reflexivity. Qed.

Lemma fib_simpl_spec : forall n, (* useful lemma for rewriting *)
    fib_simpl (S (S n)) = fib_simpl (S n) + fib_simpl n.
Proof.
  destruct n.
  - (* case n := 0 *)
    reflexivity.
  - (* case n := (S n) *)
    destruct n; reflexivity.
Qed.
      
(* For a (slightly) faster version *)

Fixpoint fib_acc_aux (n : nat) (acc : nat) (prev : nat) {struct n} : nat :=
  match n with
  | 0 => acc + prev
  | S n => fib_acc_aux n (acc + prev) acc
  end.

Definition fib_faster (n : nat) : nat :=
  match n with
  | 0 => 1
  | S n => match n with
           | 0 => 1
           | S m => (fib_acc_aux m 1 1)
           end
  end.

Example fib_faster_3 : (fib_faster 2 = 2). reflexivity. Qed.
Example fib_faster_4 : (fib_faster 3 = 3). reflexivity. Qed.
Example fib_faster_5 : (fib_faster 4 = 5). reflexivity. Qed.

Lemma fib_acc_aux_rewrite : forall n a b c d,
    fib_acc_aux n a c + fib_acc_aux n b d = fib_acc_aux n (a + b) (c + d).
Proof.
  induction n; intros.
  - (* case n := 0 *)
    simpl; lia.
  - (* case n := (S n) *)
    simpl.
    rewrite IHn.
    f_equal.
    lia.
Qed.    
  
Theorem fib_faster_spec: forall n, fib_simpl n = fib_faster n.
Proof.
  induction n using lt_wf_ind. (* use strong induction *)
  rename H into strong_induction_hypothesis.
  destruct n. (* lt_wf_ind does not deal immediately with cases *)
  - (* case n := 0 *)
    reflexivity.
  - (* case n := (S n) *)
    destruct n.
    + (* case n := 1 *)
      reflexivity.
    + (* case n := (S (S n)) *)
      rewrite ?fib_simpl_spec.
      do 2 rewrite strong_induction_hypothesis by lia.
      enough (forall n, fib_faster (S n) + fib_faster n = fib_faster (S (S n))) as lemma by apply lemma.
      clear.
      destruct n.
      * (* for lemma, case n := 0 *)
        reflexivity.
      * (* for lemma, case n := S n *)
        destruct n.
        -- (* for lemma, case n := 1 *)
          reflexivity.
        -- (* for lemma, case n := S (S n) *)
           simpl. 
           apply fib_acc_aux_rewrite.
Qed.

