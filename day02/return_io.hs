getFullName = do
    putStrLn " Enter Firstname: "
    firstName <- getLine
    putStrLn " Enter Surname: "
    surname <- getLine
    return (firstName, surname)

main = do
    (first, surname) <- getFullName
    fileRead <- readFile "./test.txt"
    print (first, surname)
    appendFile "./test2.txt" fileRead
    putStrLn ("Hello " ++ first ++ " " ++ surname)