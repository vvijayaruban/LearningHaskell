-- func x = x + 1
-- two f x = f (f x)
-- one f x = f x
-- zero f x = x

-- true x y = x
-- false x y = y

-- ifte bool t e =
--     bool t e

-- add2 m n f x = m f (n f x)

-- mul m n f x =  m (n f) x

-- iszero n =
--     n (\_ -> false) true

-- (x:xs) .+ (y:ys) = (x*y:(xs .+ ys))

-- true x y = x
-- false x y = y

-- ifte bool t e =
--     bool t e

-- funcT a = a
-- funcBool funT a = funT a
-- ifThenElse a = funcBool (funcT a)

-- aBool = True


showPlus str num = "(" ++ str ++ " + " ++ (show num) ++ ")"

showPlusR num str = "(" ++ str ++ " + " ++ (show num) ++ ")"

mul2 x = 2 * x
add2 x = 2 + x
