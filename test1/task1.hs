-- Напишите функцию partitionN :: [a] -> Int ->[[a]], которая разбивает заданный список
-- на указанное количество подсписков. N-1 подсписков должны иметь одинаковую длину,
-- последний элемент списка списков может содержать меньшее количество элементов. 
-- Предусмотреть контроль входных данных.
-- 
-- Например partitionN [1,2,3,4,5,6,7] 3 даст результат [[1,2,3],[4,5,6],[7]]
--          partitionN [1,2,3,4,5,6,7] 4 даст результат [[1,2],[3,4],[5,6],[7]]

l = [1, 2, 3, 4, 5, 6, 7]

partitionN :: [a] -> Int -> [[a]]
partitionN xs n
    | n <= 0 = error "Количество подсписков должно быть больше нуля."
    | otherwise = split xs n (length xs)

split :: [a] -> Int -> Int -> [[a]]
split [] _ _ = []
split xs n origXsSize = 
    let chunkSize = (origXsSize + n - 1) `div` n
        (chunk, rest) = splitAt chunkSize xs
    in chunk : split rest n origXsSize

main :: IO ()
main = do
    print $ partitionN l 3
    print $ partitionN l 4
