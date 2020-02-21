import System.IO

quad (a, b, c) = [x1, x2] where
    x1 = (-b + sqrt (b**2 - 4 * a * c))/2*a
    x2 = (-b - sqrt (b**2 - 4 * a * c))/2*a

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

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
    putStrLn "X1 = " ++ show (head awnsers)
    putStrLn ("X2 = " ++ show (awnsers !! 1))

main = quadMain
