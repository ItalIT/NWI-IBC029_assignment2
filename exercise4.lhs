author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 4.1
============

This function does what you would expect it to do: It takes a tuple of 2
integers (fixed precision) and returns a tuple with those same elements in
reverse order.

> swap :: (Int, Int) -> (Int, Int)
> swap (a, b) = (b, a)

This function has the same type but does not swap the tuple.

> sameType :: (Int, Int) -> (Int, Int)
> sameType x = x

This one is very tricky and will never terminate.

> sameTypeConstOut :: (Int, Int) -> (Int, Int)
> sameTypeConstOut = sameTypeConstOut

exercise 4.2
============

exercise 4.3
============
