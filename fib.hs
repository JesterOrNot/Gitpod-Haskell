fib :: Int -> Integer
main :: IO ()

main = do
    putStrLn(show(fib 10000))

fib = (map fibs [0 ..] !!)
   where fibs 0 = 0
         fibs 1 = 1
         fibs n = fib (n-2) + fib (n-1)
