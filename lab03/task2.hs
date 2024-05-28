-- 2. Определите функцию secondlastlist. Эта функция берет список 
-- списков и возвращает последние элементы каждого, объединенные  в список. #2

-- TODO: добавить обработку пустого подсписка

secondlastlist :: [[a]] -> [a]
secondlastlist = map last

main :: IO ()
main = do
    print $ secondlastlist [[1, 2, 3], [4, 5], [6]]
