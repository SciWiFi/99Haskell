coprime :: Int -> Int -> Bool
coprime x y = myGCD x y == 1

myGCD :: Int -> Int -> Int
myGCD x y = maximum (getCommonElements (divs (abs x)) (divs (abs y)))

divs x = [ a | a <- [1..x], x `mod` a == 0 ]

getCommonElements :: Eq a => [a] -> [a] -> [a]
getCommonElements [] y = []
getCommonElements (x:xs) y
    | x `elem` y = x : getCommonElements xs y
    | otherwise = getCommonElements xs y
