myGCD :: Int -> Int -> Int
myGCD x y = maximum (getCommonElements (divs (abs x)) (divs (abs y)))

divs x = [ a | a <- [2..x], x `mod` a == 0 ]

getCommonElements [] y = []
getCommonElements (x:xs) y
    | x `elem` y = x : getCommonElements xs y
    | otherwise = getCommonElements xs y
