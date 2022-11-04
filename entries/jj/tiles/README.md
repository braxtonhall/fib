# Wang Tiling

These are Wang tiles. For more information, see https://en.wikipedia.org/wiki/Wang_tile.

There is only one arrangement of these tiles that tiles the infinite plane _aperiodically_. This arrangement forms the Fibonacci sequence.

Begin by placing down the third tile (the one with the North and West edges being black, the East edge being green, and the South edge being yellow), and continue by placing tiles such that the infinite plane can continue to be filled. The eleventh tile (the one with the North edge being black and the West, East, and South edges being purple) will appear in Fibonacci-spaced intervals.

The algorithm for this is adapted from https://grahamshawcross.com/2012/10/12/wang-tiles-and-turing-machines/ (with some fixes and tweaks).
