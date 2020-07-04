elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys)
    | x == y = True
    | otherwise = elem x ys


data RGB = RGB Int Int Int deriving (Eq)--,Show)

colors = [RGB 255 0 0, RGB 0 255 0, RGB 0 0 255]

-- instance Eq RGB where
--                 (RGB r1 g1 b1) == (RGB r2 g2 b2) =
--                     (r1 == r2) && (g1 == g2) && (b1 == b2)

instance Show RGB where
    show (RGB r g b) =
        "rgb " ++ (show r) ++ " " ++ (show g) ++ " " ++ (show b)

-- Read, Show, Ord, Eq

green = RGB 0 255 0

greenInColors = elem' green colors


data Maybe' a = Nothing' | Just' a

instance (Eq a) => Eq (Maybe' a) where
    Nothing' == Nothing' = True
    Nothing' == (Just' _) = False
    (Just' _) == Nothing' = False
    (Just' x) == (Just' y) = x == y

