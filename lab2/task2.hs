-- 2. insert (L,A,n) -  функция включения в список L заданного атома А на определенную позицию n.  #2

insert :: [a] -> [a] -> Int -> [a]
insert insertable toInsert pos = chunk ++ toInsert ++ rest
    where (chunk, rest) = splitAt pos insertable

main :: IO ()
main = do
    print $ insert [1, 2, 3, 4, 5] [4, 4, 4] 3