pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs = [fst a] ++ pack (snd a)
    where a = span (== head xs) xs
