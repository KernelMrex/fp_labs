-- 3. Программа работы с файлом предусматривает: просмотр содержимого,
-- добавление новой информации, удаление какой-либо строки, копирование
-- содержимого в новый файл с использованием двух видов фильтрации
-- (фильтр выбираем самостоятельно).

import System.Environment (getArgs)
import System.IO
import Data.List
import System.Directory (copyFile)

viewFile :: FilePath -> IO ()
viewFile filePath = do
    contents <- readFile filePath
    putStrLn contents

addToFile :: FilePath -> FilePath -> String -> IO ()
addToFile inputFilePath outputFilePath str = do
    copyFile inputFilePath outputFilePath
    appendFile outputFilePath (str ++ "\n")

deleteLineFromFile :: FilePath -> FilePath -> Int -> IO ()
deleteLineFromFile inputFilePath outputFilePath lineNum = do
    contents <- readFile inputFilePath
    let linesList = lines contents
    let newLinesList = delete (linesList !! (lineNum - 1)) linesList
    writeFile outputFilePath (unlines newLinesList)

copyFileFiltered :: FilePath -> FilePath -> Int -> Maybe String -> IO ()
copyFileFiltered sourceFilePath targetFilePath filterType filterString = do
    contents <- readFile sourceFilePath
    let linesList = lines contents
    let filteredLines = case filterType of
                          1 -> case filterString of
                                 Just str -> filter (\line -> length line > read str) linesList
                                 Nothing -> linesList
                          2 -> case filterString of
                                 Just str -> filter (isInfixOf str) linesList
                                 Nothing -> linesList 
                          _ -> linesList
    writeFile targetFilePath (unlines filteredLines)

main :: IO ()
main = do
    args <- getArgs
    let inputFilePath = head args
    let outputFilePath = args !! 1
    putStrLn "Выберите действие: 1 - просмотр файла, 2 - добавить в файл, 3 - удалить строку, 4 - копировать с фильтрацией"
    action <- getLine
    case action of
        "1" -> viewFile inputFilePath
        "2" -> do
            putStrLn "Введите строку для добавления:"
            strToAdd <- getLine
            addToFile inputFilePath outputFilePath strToAdd
        "3" -> do
            putStrLn "Введите номер строки для удаления:"
            lineNum <- getLine
            deleteLineFromFile inputFilePath outputFilePath (read lineNum)
        "4" -> do
            putStrLn "Введите имя целевого файла:"
            targetFilePath <- getLine
            putStrLn "Выберите тип фильтра: 1 - по длине строки, 2 - содержит подстроку"
            filterType <- getLine
            putStrLn "Введите параметр фильтрации (для длины - число, для подстроки - текст):"
            filterParam <- getLine
            copyFileFiltered inputFilePath targetFilePath (read filterType) (Just filterParam)
        _ -> putStrLn "Неверное действие"