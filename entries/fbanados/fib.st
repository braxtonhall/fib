'From Pharo10.0.0 of 15 June 2022 [Build information: Pharo-10.0.0+build.521.sha.14f541319d443f4261f84f4fa19fbb34460a5edb (64 Bit)] on 24 October 2022 at 11:26:20.436554 am'!

!Integer methodsFor: '*Fibonacci' stamp: 'FelipeBanados 10/24/2022 11:13'!
fibonacciNumber
	self <= 2 ifTrue: [ ^ 1 ].
	^ (self - 1) fibonacciNumber + (self - 2) fibonacciNumber.

! !
