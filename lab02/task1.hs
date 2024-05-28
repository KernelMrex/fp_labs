-- 1. oddEven(L) -  функция перестановки местами соседних элементов списка L 
-- Например, список [2,5,7,9,1,8]  после преобразования будет иметь вид [5,2,9,7,8,1]

oddEven :: [a] -> [a]
oddEven [] = []
oddEven (x:y:rest) = y:x:oddEven rest
oddEven [x] = [x]

main :: IO ()
main = do
    print [2, 5, 7, 9, 1, 8]
    print $ oddEven [2, 5, 7, 9, 1, 8]
    print [2, 5, 7, 9, 1]
    print $ oddEven [2, 5, 7, 9, 1]