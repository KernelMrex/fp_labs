-- 3. Определите функцию myunion, которая находит объединение двух 
-- списков. Объединением двух списков будет список содержащий элементы, 
-- которые есть по крайней мере в одном из списков. #2

myunion :: (Eq a) => [a] -> [a] -> [a]
myunion [] _ = []
myunion _ [] = []
myunion l1 l2 = filter (\x -> x `elem` l1) l2


main :: IO ()
main = do
    print $ myunion [1, 2, 3, 4, 5] [4, 5, 6, 7]
