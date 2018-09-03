isPrime :: Int -> Bool
isPrime x = length (divs x) == 1

divs x = [ a | a <- [2..x], x `mod` a == 0 ]
