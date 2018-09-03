data Item a = Single a | Multiple Int a deriving (Show)

decodeModified xs = concat (map f xs)

f :: Eq a => Item a -> [a]
f (Single a) = [a]
f (Multiple x a) = replicate x a
