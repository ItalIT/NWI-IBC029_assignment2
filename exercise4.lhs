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

> sameTypeRecursive :: (Int, Int) -> (Int, Int)
> sameTypeRecursive = sameTypeRecursive

exercise 4.2
============

Again, the obvious and expected function definition:

> swap2 :: (a, b) -> (b, a)
> swap2 (a, b) = (b, a)

It is the same as my original definition, it is just more generic because of the
type definition. In the original, a and b were Ints, here they can be anything.

My second definition "sameType" is not valid anymore because the input and
output are not of the same type which means I cannot just return the input as my
output.

The third definition is still valid, still tricky, and still won't terminate.

> sameTypeRecursive2 :: (a, b) -> (b, a)
> sameTypeRecursive2 = sameTypeRecursive2

exercise 4.3
============

The type "(Int, (Char, Bool))" is a 2-tuple with an Int as its first element,
and a 2-tuple that contains a Char and a Bool as its second element.

The type "(Int, Char, Bool)" is a 3-tuple with 3 elements of types Int, Char,
and Bool.

We can convert between the two types with the following functions:

> threeTupleToNestedTwoTuple :: (Int, Char, Bool) -> (Int, (Char, Bool))
> threeTupleToNestedTwoTuple (a, b, c) = (a, (b, c))

> nestedTwoTupleToThreeTuple :: (Int, (Char, Bool)) -> (Int, Char, Bool)
> nestedTwoTupleToThreeTuple (a, (b, c)) = (a, b, c)
