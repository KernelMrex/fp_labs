myReplicate :: Int -> a -> [a]
myReplicate times val = if times <= 0 then [] else replicate times val

listSumm :: [Int] -> [Int] -> [Int]
listSumm l1 l2 = zipWith (+) exL1 exL2
    where
        exL1 = l1 ++ myReplicate (length l2 - length l1) 0
        exL2 = l2 ++ myReplicate (length l1 - length l2) 0

main :: IO ()
main = do
    print $ listSumm [1, 2, 3, 4] [5, 6, 7, 8]
    print $ listSumm [1, 2, 3, 4] [5, 6]