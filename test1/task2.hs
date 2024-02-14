-- 2. Напишите функцию elemIndices :: Eq a => a -> [a] -> [Int], которая находит,
-- под какими индексами в списке встречается заданный элемент.

elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices _ [] = []
elemIndices x xs = findIndices x xs 0
  where
    findIndices :: Eq a => a -> [a] -> Int -> [Int]
    findIndices _ [] _ = []
    findIndices y (z:zs) index
        | y == z = index : findIndices y zs (index + 1)
        | otherwise = findIndices y zs (index + 1)

main :: IO ()
main = do
    print $ elemIndices 1 [1, 2, 3, 4, 5, 6, 6, 7]
    print $ elemIndices 3 [1, 2, 3, 4, 5, 6, 6, 7]
    print $ elemIndices 6 [1, 2, 3, 4, 5, 6, 6, 7]
