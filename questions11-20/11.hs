data Item a = Single a | Multiple Int a deriving (Show)

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs = [fst a] ++ pack (snd a)
    where a = span (== head xs) xs

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map f (pack xs)

f :: [a] -> (Int, a)
f x = (length x, head x)
    
encodeModified :: Eq a => [a] -> [Item a]
encodeModified xs = map g (encode xs)
    where
        g (1, y) = Single y
        g (x, y) = Multiple x y
