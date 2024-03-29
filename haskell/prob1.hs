{-
 -Problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
 - -}
main = do print $ sum $ filter is3or5 [1..999]
is3or5 :: Int -> Bool
is3or5 n | mod n 3 == 0 = True
         | mod n 5 == 0 = True
         | otherwise = False
