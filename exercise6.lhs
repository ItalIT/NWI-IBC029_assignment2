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

(a) (a, a) → (a, a)

> a2 :: (a, a) -> (a, a)
> a2 x = x

(b) (a, b) → (b, a)

> b2 :: (a, b) -> (b, a)
> b2 (a, b) = (b, a)

(c) (a → b) → a → b

> c2 :: (a -> b) -> a -> b
> c2 f x = f x

(d) (a, x) → a

> d2 :: (a, x) -> a
> d2 (a, x) = a

(e) (x → a → b, a, x) → b

> e2 :: (a -> b -> c, b, a) -> c
> e2 (x, y, z) = x z y

(f) (a → b, x → a, x) → b

> f2 :: (a -> c, b -> a, b) -> c
> f2 (x, y, z) = x (y z)

(g) (x → a → b, x → a, x) → b

> g2 :: (b -> a -> c, b -> a, b) -> c
> g2 (x, y, z) = (x z) (y z)

exercise 6.3
============
