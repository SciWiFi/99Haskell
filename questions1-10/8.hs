compress :: Eq a => [a] -> [a]
compress (x:[]) = [x]
compress (x:y:ys) = if x /= y
    then x : compress (y:ys)
    else compress (y:ys)