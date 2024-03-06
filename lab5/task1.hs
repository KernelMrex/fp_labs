-- 1. Вывести на экран сформированный список, данные для которого вводятся с клавиатуры:
-- начальноезначение, количество элементов, кратность.
-- Например- [14,21,28] 3 элемента списка, начинающиеся с 14, кратные 7. #2

generateList :: Int -> Int -> Int -> [Int]
generateList start count step = take count [start, start + step ..]

main :: IO ()
main = do
    putStrLn "Введите начальное значение:"
    start <- readLn :: IO Int
    putStrLn "Введите количество элементов:"
    count <- readLn :: IO Int
    putStrLn "Введите кратность:"
    step <- readLn :: IO Int
    let list = generateList start count step
    putStrLn "Результат:"
    print list
