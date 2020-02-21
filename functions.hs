import System.IO

bubbleSort :: (Ord a) => [a] -> [a]
factorial :: Int -> Integer
fizz :: Int -> String
fibonacci :: Int -> Integer
main :: IO ()
mean :: (Fractional a) => [a] -> a
meanSquaredError :: Floating a => [a] -> [a] -> a
quad :: (Float, Float, Float) -> [Float]
quadMain :: IO ()

main = do
    print (fibonacci 10000)
    print (factorial 500)
    putStrLn("Ascending " ++ show (bubbleSort [1, 5, 2, - 7, - 6, 9]))
    putStrLn("Descending " ++ show (reverse (bubbleSort [1, 5, 2, - 7, - 6, 9])))
    print (map fizz [1 .. 100])
    print (meanSquaredError [1, 1, 2, 2, 4] [0.6, 1.29, 1.99, 2.69, 3.4])

fibonacci = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = fibonacci (n-2) + fibonacci (n-1)

factorial = (map fact [0 ..] !!)
   where fact 0 = 1
         fact n = n * fact (n - 1)

bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:y:arrLeft) = bubbleSort(init bubbled) ++ [last bubbled]
    where (smaller,bigger) = if x <= y then (x, y) else (y, x)
          bubbled = smaller : bubbleSort (bigger : arrLeft)

quad (a, b, c) = [x1, x2] where
    x1 = (-b + sqrt (b**2 - 4 * a * c))/2*a
    x2 = (-b - sqrt (b**2 - 4 * a * c))/2*a

quadMain = do
    putStr "What is a?: "
    hFlush stdout
    a1 <- getLine
    putStr "What is b?: "
    hFlush stdout
    b1 <- getLine
    putStr "What is c?: "
    hFlush stdout
    c1 <- getLine
    let a = read a1 :: Float
    let b = read b1 :: Float
    let c = read c1 :: Float
    let awnsers = quad(a,b,c)
    putStrLn ("X1 = " ++ show (head awnsers))
    putStrLn ("X2 = " ++ show (awnsers !! 1))

fizz n | n `mod` 3  == 0 = "Fizz"
       | n `mod` 5  == 0 = "Buzz"
       | n `mod` 15 == 0 = "FizzBuzz"
       | otherwise = show n

mean xs = sum xs / fromIntegral (length xs)

meanSquaredError inputs predictions = mean [(inputs !! i - predictions !! i)**2 | i <- [0..length inputs-1]]

productRule (n, m) = do
    let function x = x **(n + m)
    function

quotientRule (n, m) = do
    let function x = x **(n - m)
    function

powerRule (n, m) = do
    let function x = x **(n * m)
    function


multiplier y = do
    let function x = x*y
    function
