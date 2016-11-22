author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 6.1
============

(a) Int -> Int

> a :: Int -> Int
> a i = i

(b) a -> a

> b :: a -> a
> b a = a

(c) (Int, Int) -> Int

> c :: (Int, Int) -> Int
> c (a, b) = b

(d) (a, a) -> a

> d :: (a, a) -> a
> d (a, b) = b

(e) (a, b) -> a

> e :: (a, b) -> a
> e (a, b) = a

There are finitely many different total functions of type Int -> Int as there
are finitely many machine integers. For all practical purposes there are
infinitely many.
There is only 1 total function of type a -> a because we do not know what type a
is and therefore the only possibility is simply returning the argument of which
we know that it's of type a.

exercise 6.2
============

(a) (a, a) -> (a, a)

> a2 :: (a, a) -> (a, a)
> a2 x = x

(b) (a, b) -> (b, a)

> b2 :: (a, b) -> (b, a)
> b2 (a, b) = (b, a)

(c) (a -> b) -> a -> b

> c2 :: (a -> b) -> a -> b
> c2 f x = f x

(d) (a, x) -> a

> d2 :: (a, x) -> a
> d2 (a, x) = a

(e) (x -> a -> b, a, x) -> b

> e2 :: (a -> b -> c, b, a) -> c
> e2 (x, y, z) = x z y

(f) (a -> b, x -> a, x) -> b

> f2 :: (a -> c, b -> a, b) -> c
> f2 (x, y, z) = x (y z)

(g) (x -> a -> b, x -> a, x) -> b

> g2 :: (b -> a -> c, b -> a, b) -> c
> g2 (x, y, z) = (x z) (y z)

exercise 6.3
============
(a) Int -> (Int -> Int)

> a3 :: Int -> (Int -> Int)
> a3 i = \x -> i * x

(b) (Int -> Int) -> Int

> b3 :: (Int -> Int) -> Int
> b3 f = f 1

(c) a -> (a -> a)

> c3 :: a -> (a -> a)
> c3 a = \x -> a

(d) (a -> a) -> a

I think this is not possible. We have a function that takes an a and returns an
a but we have no a to put into the function. If we did we could just return
that instance of a and not use the function at all.

I think there are 0 functions of type (a -> a) -> a but there are practically
infinitely many functions of type (Int -> Int) -> Int because it is easy to get
ahold of an instance of a type if you know the type. Because we know the type is
Int we can easily apply the function to some instance of type Int, e.g. 7.

We do not even need to do that and can choose to ignore the function argument
because we know the type we must return.

(Actually because Int is finite there are only finitely many functions. There
are as many function as there are Ints.)
