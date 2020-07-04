
newtype CustomerId = MakeCustomerId Int deriving (Show)
data Customer = Customer CustomerId String Int deriving (Show)

-- data Bool = False | True    
x = False
y = True

alice = Customer (MakeCustomerId 13) "Alice" 42

getCustomerId :: Customer -> CustomerId
getCustomerId (Customer c_id _ _) = c_id

getName (Customer _ name _) = name

data StringTree = StringTree String [StringTree] deriving (Show)

hierarchy = StringTree "C:"
                [ StringTree "Program files" [] 
                , StringTree "Users"
                        [StringTree "Vijay" []]
                , StringTree "Cats" []
                ]

data MayBeInt = NoInt | JustInt Int

defaultInt :: Int -> MayBeInt -> Int
defaultInt val NoInt = val
defaultInt _ (JustInt x) = x

data StringList = EmptyStringList
                | ConsStringList String StringList

lengthStringList :: StringList -> Int
lengthStringList EmptyStringList = 0
lengthStringList (ConsStringList _ xs) = 1 + lengthStringList xs

length' :: [a] -> Int
length' []       = 0
length' (_ : xs) = 1 + length' xs
