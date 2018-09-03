rotate :: [a] -> Int -> [a]
rotate [] a = []
rotate xs a
    | a >= 0 = drop a xs ++ take a xs
    | otherwise = drop i xs ++ take i xs
    where i = (length xs + a)
    