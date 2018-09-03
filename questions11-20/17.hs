split :: [a] -> Int -> ([a], [a])
split (x:xs) a
    | a > 0 = (x:y1, y2)
    | otherwise = ([], (x:xs))
    where (y1, y2) = split xs (a - 1)