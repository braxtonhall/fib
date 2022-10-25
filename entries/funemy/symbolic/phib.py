from typing import List
 
def phib(xs: List[int]) -> bool:
    """
    Instructions:
        1. `pip install crosshair-tool`
        2.  modify the precondition `pre` to control the length of your fib sequence
        3. run `crosshair check phib.py` in your terminal

    pre: len(xs) >= 10
    post: __return__ != True
    """
    if xs[0] != 0:
        return False
    if len(xs) > 1:
        if xs[1] != 1:
            return False
        for i in range(2,len(xs)):
            if xs[i] != xs[i-1] + xs[i-2]:
                return False
        return True
