type Zero = "😰";

type Succ<N> = {prev: N};

type Prev<N> = N extends Succ<infer P> ? P : never;

type Add<A, B> = B extends Zero ? A : Succ<Add<A, Prev<B>>>;

type _Fib<N, AccumulatorA, AccumulatorB> =
	N extends Zero
		? AccumulatorA
		: N extends Succ<Zero>
			? AccumulatorB
			: _Fib<Prev<N>, AccumulatorB, Add<AccumulatorA, AccumulatorB>>;

type Fib<N> = _Fib<N, Zero, Succ<Zero>>;

export type {Zero, Succ, Fib};
