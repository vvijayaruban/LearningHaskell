aToZ = ['a','b' .. 'z'] ++ ['a'] ++ ['A','B' .. 'Z'] ++ ['A']

getIndexWithStart char (x:xs) start
        | x == char = start
        | start >= length(aToZ) = (-1)
        | otherwise = getIndexWithStart char xs (start + 1)

getIndex char = getIndexWithStart char aToZ 0

getCharToIndex index = head $ drop index aToZ

encrypt char =
    getCharToIndex $ (getIndex char) + 1

-- handleChar = do
--     print aToZ
--     c <- getChar
--     putChar c
--     let nc = encrypt c
--     putChar nc

-- inputLoop = do
--     print aToZ
--     handleChar

-- main = inputLoop

main = interact (map encrypt)