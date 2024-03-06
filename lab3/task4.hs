-- 4. Определите функцию mysubst. Получив два списка, она возвращает их разность.
-- Разность двух списков называется список, состоящий из элементов 
-- первого списка, которые не принадлежат второму списку. #2

mysubst :: (Eq a) => [a] -> [a] -> [a]
mysubst subtractable subtractor = filter (\x -> not (x `elem` subtractor)) subtractable

main :: IO ()
main = do
    print $ mysubst [1, 2, 3, 4] [2, 3] 