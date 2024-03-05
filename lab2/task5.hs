sumOfIndicies :: Int -> Int
sumOfIndicies n = (1 + n) * n `div` 2

main :: IO ()
main = do
    print $ sumOfIndicies 5