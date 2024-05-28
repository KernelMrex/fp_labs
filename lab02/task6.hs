sumOfIndiciesSubMax :: Int -> Int
sumOfIndiciesSubMax n = ((1 + n) * n `div` 2) - n

main :: IO ()
main = do
    print $ sumOfIndiciesSubMax 4