
import Control.Monad.Reader

getFirst :: Reader String String
getFirst = do
    name <- ask
    return ( name ++ " woke up")

-- getSecond :: Reader String String
getSecond = do
    name <- ask
    return (name ++ " wrote some Haskell")

-- getStory :: Reader String String
getStory = do
    first <- getFirst
    second <- getSecond
    return ("First, " ++ first ++ ". Secound, " ++ second ++ ".")

-- story = runReader getStory "Vijay"