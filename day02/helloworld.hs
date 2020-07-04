main :: IO ()
main = do
    helloWorld
    helloWorld
    helloWorld

helloWorld :: IO ()
helloWorld = putStrLn "Hello World"
