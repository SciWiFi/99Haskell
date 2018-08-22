myButLast :: [a] -> a
myButLast x
    | length x < 2 = error "Not enough elements"
    | otherwise = head (reverse (init x))