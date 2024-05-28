import System.IO

-- BEGIN 0
do_my_list :: Int-> [Int]
do_my_list n = [n..n+n-1]
-- END 0

-- BEGIN 1
oddEven :: [a] -> [a]
oddEven [] = []
oddEven (x:y:rest) = y:x:oddEven rest
oddEven [x] = [x]
-- END 1

-- BEGIN 2
insert :: [a] -> [a] -> Int -> [a]
insert insertable toInsert pos = chunk ++ toInsert ++ rest
    where (chunk, rest) = splitAt pos insertable
-- END 2

-- BEGIN 3
myReplicate :: Int -> a -> [a]
myReplicate times val = if times <= 0 then [] else replicate times val

listSumm :: [Int] -> [Int] -> [Int]
listSumm l1 l2 = zipWith (+) exL1 exL2
    where
        exL1 = l1 ++ myReplicate (length l2 - length l1) 0
        exL2 = l2 ++ myReplicate (length l1 - length l2) 0
-- END 3

-- BEGIN 4
position :: (Eq a) => [a] -> a -> Maybe Int
position [] needle = Nothing
position list needle = positionRec 0 list needle
    where
        positionRec i [] needle = Nothing
        positionRec i (h:rest) needle
            | h == needle = Just i
            | otherwise = positionRec (i+1) rest needle
-- END 4

-- BEGIN 5
sumOfIndicies :: Int -> Int
sumOfIndicies n = (1 + n) * n `div` 2
-- END 5

-- BEGIN 6
sumOfIndiciesSubMax :: Int -> Int
sumOfIndiciesSubMax n = ((1 + n) * n `div` 2) - n
-- END 6


-- BEGIN main
main :: IO ()
main = do
    -- begin: task 0 
    putStr "0:"
    print $ do_my_list 5
    print $ do_my_list 4
    -- end: task 0

    -- begin: task 1
    print [2, 5, 7, 9, 1, 8]
    print $ oddEven [2, 5, 7, 9, 1, 8]
    print [2, 5, 7, 9, 1]
    print $ oddEven [2, 5, 7, 9, 1]
    -- end: task 1

    -- begin: task 2
    print $ insert [1, 2, 3, 4, 5] [4, 4, 4] 3
    -- end: task 2

    -- begin: task 3
    print $ listSumm [1, 2, 3, 4] [5, 6, 7, 8]
    print $ listSumm [1, 2, 3, 4] [5, 6]
    -- end: task 3

    -- begin: task 4
    print $ position [1, 2, 3, 4, 5] 3
    print $ position [1, 2, 3, 3, 4, 5] 3
    -- end: task 4

    -- begin: task 5
    print $ sumOfIndicies 5
    -- end: task 5

    -- begin: task 6
    print $ sumOfIndiciesSubMax 4
    -- end: task 6
-- END main