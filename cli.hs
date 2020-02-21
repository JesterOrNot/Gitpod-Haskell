import System.Environment   

main :: IO ()

main = do
    args <- getArgs
    case head args of
        "help" -> putStrLn "This is a help menu"
        _ -> putStrLn "Invalid"
