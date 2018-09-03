not' :: Bool -> Bool
not' True = False
not' False = True

and' :: Bool -> Bool -> Bool
and' True True = True
and' x y = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' x y = True

nor' :: Bool -> Bool -> Bool
nor' False False = True
nor' x y = False

nand' :: Bool -> Bool -> Bool
nand' True True = False
nand' x y = True

xor' :: Bool -> Bool -> Bool
xor' x y = x /= y

equ' :: Bool -> Bool -> Bool
equ' x y = x == y

impl' :: Bool -> Bool -> Bool
impl' x y = or' (not' x) y

table :: (Bool -> Bool -> Bool) -> String
table f =  concat [ show x ++ " " ++ show y ++ " " ++ show (f x y) ++ "\n" | x <- [True, False], y <- [True, False] ]