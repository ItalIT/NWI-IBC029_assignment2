author: Hendrik Werner s4549775
author: Jasper Haasdijk s4449754

exercise 2.1
============

> import Data.Char
> import Data.Either

> equal :: String -> String -> Bool
> equal a b = let upperA = map toUpper a
>                 upperB = map toUpper b
>             in upperA == upperB

exercise 2.2
============

The following function checks whether a given string only consists of digits.

> isNumeral :: String -> Bool
> isNumeral s = and (map (\c -> isDigit c) s)

We also made a function to check whether a string solely consists of whitespace.

> isBlank :: String -> Bool
> isBlank s = and (map (\c -> isSpace c) s)

exercise 2.3
============

We used the build in function ord to substract the ASCII value of 0 from the
ASCII value of the given input character to retrieve the correct integer value.

> fromDigit :: Char -> Int
> fromDigit c = ord c - ord '0'

We used guards for checking whether the given input is a digit. We return an
error if it is not and we add the ASCII value of the input to the ASCII value of
0 if it is.

> toDigit :: Int -> Char
> toDigit a
>		| a < 0 = error "negative value"
>		| a > 9 = error "value too high"
>		| otherwise = (chr (ord '0' + a))

exercise 2.4
============

> msg :: String
> msg = "MHILY LZA ZBHL XBPZXBL MVYABUHL HWWPBZ JSHBKPBZ "
>       ++ "JHLJBZ KPJABT HYJUBT LZA ULBAYVU"
