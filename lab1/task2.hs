-- Используя функции head и tail получить элемент b из следующих списков

l1 =  ['a', 'b', 'c']
r1 = head (tail l1)

l2 = [['a', 'b'], ['c','d']]
r2 = head (tail (head l2))

l3 = [['a', 'c', 'd'], ['a','b']]
r3 = head (tail (head (tail l3)))

l4 = [['a','d'], ['b', 'c']]
r4 = head (head (tail l4))


main :: IO ()
main = do
    print r1
    print r2
    print r3
    print r4
