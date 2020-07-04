type String = [Char]

type Point = (Double,Double)

newtype Point2 = CreatePoint (Double, Double)

point2ToPoint:: Point2 -> (Double,Double)
point2ToPoint (CreatePoint (p1,p2)) = (p1,p2)

newtype Point3 = Point3 (Double, Int)

point3ToPoint:: Point3 -> (Double,Int)
point3ToPoint (Point3 (p1,p2)) = (p1,p2)
