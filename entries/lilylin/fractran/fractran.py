import math

def fibonacci(n):
	def is_power_of_two(counter):
		bin = "{0:b}".format(counter)
		return bin[0] == "1" and all([x == "0" for x in bin[1:]])

	# http://lomont.org/posts/2017/fractran/
	fractions = [
                (17, 65),
                (133, 34),
                (17, 19),
                (23, 17),
                (2233, 69),
                (23, 29),
                (31, 23),
                (74, 341),
                (31, 37),
                (41, 31),
                (129, 287),
                (41, 43),
                (13, 41),
                (1, 13),
                (1, 3),
            ]

	counter = 78 * pow(5,n)

	while True:
		if is_power_of_two(counter):
			return int(math.log2(counter))
		for (numerator, denominator) in fractions:
			if counter % denominator == 0:
				counter //= denominator
				counter *= numerator
				break
