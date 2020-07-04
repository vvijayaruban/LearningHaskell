data Point2 = Point2 Double Double deriving (Show)
data Point3 = Point3 Double Double Double deriving (Show)

distance2 :: Point2 -> Point2 -> Double
distance2 (Point2 x1 y1) (Point2 x2 y2)= 
            sqrt(dx *dx + dy * dy)
            where dx = x1 - x2
                  dy = y1 - y2

distance3 :: Point3 -> Point3 -> Double
distance3 (Point3 x1 y1 z1) (Point3 x2 y2 z2)= 
            sqrt(dx *dx + dy * dy + dz * dz)
            where dx = x1 - x2
                  dy = y1 - y2
                  dz = z1 - z2

class Measurable a where
    distance :: a -> a -> Double

instance Measurable Point2 where
    distance = distance2

instance Measurable Point3 where
    distance (Point3 x1 y1 z1) (Point3 x2 y2 z2)= 
            sqrt(dx *dx + dy * dy + dz * dz)
            where dx = x1 - x2
                  dy = y1 - y2
                  dz = z1 - z2

instance Measurable Double where
    distance a b = abs(a - b)

pathLength :: Measurable a => [a] -> Double
pathLength [] = 0
pathLength (_ : []) = 0
pathLength (p0 : p1 : ps) =
    distance p0 p1 + pathLength (p1 : ps)

class (Show a, Measurable a) => Direction a where
    getDirections :: a -> a -> String
    getDirections p1 p2 =
        "Go from " ++ (show p1) ++
        " towards " ++ (show p2) ++
        " and stop after " ++ (show (distance p1 p2))

instance Direction Point3 where
    getDirections p1 p2 =
        "Fly from " ++ (show p1) ++
        " towards " ++ (show p2) ++
        " and stop after " ++ (show (distance p1 p2))

instance Direction Point2 where