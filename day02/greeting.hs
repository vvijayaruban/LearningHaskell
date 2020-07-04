greet :: IO ()
greet  = do
    line <- getLine
    putStrLn ("Hello " ++ line)

greetForever = do
    greet
    greetForever

main = do
    greetForever