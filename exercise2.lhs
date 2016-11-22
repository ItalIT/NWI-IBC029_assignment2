author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 2.1
============

> import Data.Char
> equal :: String -> String -> Bool
> equal a b = let upperA = map toUpper a
>                 upperB = map toUpper b
>             in upperA == upperB

exercise 2.2
============

The following function checks whether a given string only consists of digits.

> import Data.Char
> isNumeral :: String -> Bool
> isNumeral s = and (map (\c -> isDigit c) s)

We also made a function to check whether a string solely consists of whitespace.

> isBlank :: String -> Bool
> isBlank s = and (map (\c -> isSpace c) s)

exercise 2.3
============
