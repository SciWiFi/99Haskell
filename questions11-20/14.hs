dupli :: [a] -> [a]
dupli x = concat (map (replicate 2) x)
