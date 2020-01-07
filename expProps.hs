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

main = do
    let timesThree = multiplier 3
    putStrLn(show(timesThree 4))
