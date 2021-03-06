author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 5.1
============

Are the following expressions well-formed and well-typed?
(+4)                    YES
div                     YES
div 7                   YES
(div 7) 4               YES
div (7 4)               NO Because we do not knwo what to do with "7 4"
7 ‘div‘ 4               YES IFF the ‘ are meant as backticks (difficult to see)
+ 37                    NO Because + is infix
(+) 3 7                 YES
(b, ’b’, "b")           YES
(abs, ’abs’, "abs")     NO Because single quotes indicate characters
abs ◦ negate            YES
(∗3) ◦ (+3)             YES

exercise 5.2
============

(abs◦) ◦ (◦negate)      NO the function composition operator is infix (?)
(div◦) ◦ (◦mod)         NO

We know it does not work but are not 100% sure why. The exercise sheet says not
to waste too much time on this however. abs and negate have matching types so
there must be another reason why this does not work.

We are not sure this is the reason but div and mod both have the type "(Real a,
Enum a) -> Integral a" which could be the reason this expression won't work.

exercise 5.3
============

i x = x                     | a -> a
k (x, y) = x                | (a, b) -> a
b (x, y, z) = (x z) y       | (a -> b -> c, b, a) -> c
c (x, y, z) = x (y z)       | (a -> c, b -> a, b) -> c
s (x, y, z) = (x z) (y z)   | (b -> a -> c, b -> a, b) -> c
