author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 3
==========

Ints are machine integers with fixed precision and thus overflow for large
values. This means that they produce unreliable results and are also dependent
on the machine used to calculate them.

> product [1..66] :: Int

overflows repeatedly and halts at 0 on some machines (dependent on the word size
of that machine).


If I repeat the exercise unsing Integers, I get the expected results, for
example:

> product [1..66] :: Integer

produces: 5443449390774430640037292402478427526442930643887988745328601268696710
81148416000000000000000 which is also what Wolframalpha gives for "66!".

Aside: "Something to keep in mind. Especially, when you plan to work in
finance!"

If you look at financial insitutions in real life it seems like they like to
work with Ints if you consider all the miscalculations.
