-- 2. Скопировать информацию из одного файла в другой, заменив знаки 
-- пунктуации заданным с клавиатуры  символом. Имена файлов указываются
-- в командной строке. #5

import System.Environment (getArgs)
import Data.Char (isPunctuation)

-- Функция замены знаков пунктуации на заданный символ
replacePunctuation :: Char -> String -> String
replacePunctuation ch = map (\c -> if isPunctuation c then ch else c)

main :: IO ()
main = do
    args <- getArgs
    let sourceFile = args !! 0
    let targetFile = args !! 1

    putStrLn "Введите символ для замены знаков пунктуации:"
    replacementChar <- getChar
    _ <- getLine  -- считывание символа новой строки после ввода символа

    content <- readFile sourceFile
    let newContent = replacePunctuation replacementChar content

    writeFile targetFile newContent
    putStrLn "Файл успешно обработан."
