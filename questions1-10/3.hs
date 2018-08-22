elementAt :: [a] -> Int -> a
elementAt xs i
    | length xs < i || i < 1 = error "Index out of bounds"
    | otherwise = xs !! (i - 1)