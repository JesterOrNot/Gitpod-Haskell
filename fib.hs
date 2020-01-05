fibonacci :: Int -> Integer
main :: IO ()

main = do
    putStrLn(show(fibonacci 10000))

fibonacci = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = fibonacci (n-2) + fibonacci (n-1)
