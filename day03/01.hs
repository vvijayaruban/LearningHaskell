-- getIndexWithStart char (x:xs) start =
--         if x == char 
--         then start
--         else
--             if xs == []
--             then start
--             else getIndexWithStart char xs (start + 1)

-- head' array
--     | [] == array  = ' '
--     | otherwise = head array

-- getIndexWithStart char az start = case (head' az) of
--         ' '         -> start
--         char        -> start
--         _           -> getIndexWithStart char (tail az) (start + 1)

aToZ = ['a','b' .. 'z'] ++ ['a'] ++ ['A','B' .. 'Z'] ++ ['A']

getIndexWithStart char (x:xs) start
       | x == char = start
       | xs == []  = (-1)
       | otherwise = getIndexWithStart char xs (start + 1)

getIndex char = getIndexWithStart char aToZ 0

getCharToIndex index = head $ drop index aToZ

encrypt char = case (getIndex char) of
    (-1) -> char
    x    -> (getCharToIndex ( x + 1 ))

main = interact (map encrypt)

-- handleChar = do
--     c <- getChar
--     let nc = encrypt c
--     putChar nc

-- inputLoop = do
--     handleChar
--     inputLoop

-- main = inputLoop