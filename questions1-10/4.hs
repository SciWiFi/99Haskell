myLength :: [a] -> Int
myLength xs = f xs 0
    where
        f [] i = i
        f (y:ys) i = f ys (i + 1)