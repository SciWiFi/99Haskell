dropEvery :: [a] -> Int -> [a]
dropEvery xs a = f xs a 1-- [ x | i <- [0..length xs - 1], i  /= 0, x <- xs !! i ]

f [] a n = []
f (x:xs) a n = if n `mod` a == 0
    then f xs a (n + 1)
    else x : f xs a (n + 1)
