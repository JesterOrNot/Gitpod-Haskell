fib :: Int -> Int -- define funtion as taking one integer and returning one integer
fib 0 = 0 -- return 0 if input is 0
fib 1 = 1 -- reutrn 1 if input is 1
fib n = fib (n-1) + fib (n-2) -- else compute fibonacci and return it

main = do
    putStrLn (show(fib 6)) -- compute the 6th fibonacci number
