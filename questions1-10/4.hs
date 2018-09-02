myLength :: [a] -> Int
myLength xs = f xs 0
    where
        f [] i = i
        f (_:ys) i = f ys (i + 1)