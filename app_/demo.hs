showDemo a b c = show a $ b ((c *c))

doubleSecond :: Num t => [t] -> [t]
doubleSecond xs = [x|x <- zipWith(*) xs $ concat (repeat [1,2])]
