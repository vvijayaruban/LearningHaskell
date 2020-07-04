
reverseLine input2 =
    unlines (map reverse (lines input2))

getLine2  i = "Line: " ++ i

main = do
    putStrLn "Reverseing: "
    interact getLine2