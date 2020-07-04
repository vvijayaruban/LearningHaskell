
newtype CustomerId = MakeCustomerId Int deriving (Show)

data Customer = MakeCustomer
    {customerId :: CustomerId
    ,name :: String
    ,luckNumber :: Int
    }

alice :: Customer
alice = MakeCustomer
        { customerId = MakeCustomerId 13
        , name = "Alice"
        , luckNumber = 42
        }

