-- 0. do_my_list(N)
-- do_my_list :: Int-> [Int]
-- параметром является число N. функция генерирует список из N элементов, начиная с указанного элемента N
-- Например
-- do_my_list(5) вернет [5,6,7,8,9]
-- do_my_list(4) вернет [4,5,6,7] 

do_my_list :: Int-> [Int]
do_my_list n = [n..n+n-1]

main :: IO ()
main = do
    print $ do_my_list 5
    print $ do_my_list 4