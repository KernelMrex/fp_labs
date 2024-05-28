-- Список пирамидальных чисел Ферма. Колво чисел = 50

calcPyramidNumber 1 = 1
calcPyramidNumber x = x * x + calcPyramidNumber (x - 1)

l = map calcPyramidNumber [1..50]

main :: IO ()
main = print l
