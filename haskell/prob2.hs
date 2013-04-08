{-
 -Problem 2
 - -}
--main = do print $ sum $ filter even makeFibonatchList [1,2]
--
makeFibonatchList :: [Int] -> [Int]
makeFibonatchList a 
        | (last a) > 4000000 = init a
        | otherwise = makeFibonatchList $ reverse $ ((sum $ ( last a ):( last (init a) ):[] ):reverse a)

main = do print $ sum $ filter even $ makeFibonatchList [1,2]
