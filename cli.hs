import System.Environment   

main = do
    args <- getArgs
    case args !! 0 of
        "help" -> putStrLn "This is a help menu"
        _ -> putStrLn "Invalid"
