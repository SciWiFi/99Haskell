insertAt :: a -> [a] -> Int -> [a]
insertAt x xs a = take (a - 1) xs ++ [x] ++ drop (a - 1) xs
