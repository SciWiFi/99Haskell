repli :: [a] -> Int -> [a]
repli x 0 = []
repli x a = x ++ repli x (a - 1)