-- Список треугольных чисел Ферма. Колво чисел = 50.

calcTraingleNumber 1 = 1
calcTraingleNumber n = n + calcTraingleNumber(n - 1)

l = map calcTraingleNumber [1..50]

main :: IO ()
main = print l
