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

There are finitely manny different total functions of type Int -> Int as there
are finitely many machine integers. For all practical purposes there are
infinitely many.
There is only 1 total function of type a -> a because we do not know what type a
is and therefore the only possibility is simply returning the argument of which
we know that it's of type a.

exercise 6.2
============

exercise 6.3
============
