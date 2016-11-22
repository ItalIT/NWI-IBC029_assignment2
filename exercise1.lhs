author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 1.1
============

There are only 4 different functions that take a bool and return a bool. We can
either return one of the boolean values (True, False), return the argument, or
return the negated argument.

> constTrue :: Bool -> Bool
> constTrue _x = True

> constFalse :: Bool -> Bool
> constFalse _x = False

> isTrue :: Bool -> Bool
> isTrue b = b

> isFalse :: Bool -> Bool
> isFalse b = b == False

exercise 1.2
============

The amount of total functions that take two Booleans as an input and return one
Boolean is 16. This is due to the fact that there are 4 different input
possibilities ((0,0), (0,1), (1,0), (1,1)), and for every one of them 2
different output possibilities (0 or 1). This results in 2⁴ which is 16.
Here are 4 examples:

> returnFirst :: (Bool, Bool) -> Bool
> returnFirst (a, b) = a

> returnSecond :: (Bool, Bool) -> Bool
> returnSecond x = snd x

> negateFirst :: (Bool, Bool) -> Bool
> negateFirst (a, b) = (not) a == False

> negateSecond :: (Bool, Bool) -> Bool
> negateSecond (a, b) = (not) b

exercise 1.3
============
