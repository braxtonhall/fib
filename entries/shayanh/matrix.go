package main

type fibmat [2][2]int

func matmul(m1 fibmat, m2 fibmat) (m3 fibmat) {
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				m3[i][j] += m1[i][k] * m2[k][j]
			}
		}
	}
	return
}

func matpow(m fibmat, n int) fibmat {
	if n == 0 {
		return [2][2]int{
			{1, 0},
			{0, 1},
		}
	} else if n%2 == 0 {
		t := matpow(m, n/2)
		return matmul(t, t)
	} else {
		t := matpow(m, n-1)
		return matmul(t, m)
	}
}

func fib(n int) int {
	m := matpow(
		[2][2]int{
			{1, 1},
			{1, 0},
		},
		n,
	)
	return m[0][1]
}
