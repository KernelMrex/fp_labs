position :: (Eq a) => [a] -> a -> Maybe Int
position [] needle = Nothing
position list needle = positionRec 0 list needle
    where
        positionRec i [] needle = Nothing
        positionRec i (h:rest) needle
            | h == needle = Just i
            | otherwise = positionRec (i+1) rest needle


main :: IO ()
main = do
    print $ position [1, 2, 3, 4, 5] 3
    print $ position [1, 2, 3, 3, 4, 5] 3
