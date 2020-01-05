main :: IO ()
factorial :: Int -> Integer

main = do
    putStrLn(show(factorial 500))

factorial = (map fact [0 ..] !!)
   where fact 0 = 1
         fact n = n * fact (n - 1)
