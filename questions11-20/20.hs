removeAt :: Int -> [a] -> (a, [a])
removeAt a x = (x !! a, take a x ++ drop (a + 1) x)