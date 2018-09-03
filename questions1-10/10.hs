pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs = [fst a] ++ pack (snd a)
    where a = span (== head xs) xs

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map f (pack xs)

f :: [a] -> (Int, a)
f x = (length x, head x)