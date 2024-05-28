-- 5. Напишите функцию, берущую список списков и возвращающую список из N-х
-- элементов подсписков с помощью функций map и (!!) #2

-- TODO: 1. обработать i < 0
--       2. обработать i < length sublist

getElementsFromListOfLists :: Int -> [[a]] -> [a]
getElementsFromListOfLists i lists = map (\list -> list !! i) lists

main :: IO ()
main = do
    print $ getElementsFromListOfLists 2 [[1, 2, 3], [4, 5, 6, 7], [8, 9, 10]]