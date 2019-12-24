import Data.HashMap.Lazy

main = do
    let hashMap = fromList [(1 :: Int, 'a'), (2, 'b'), (3, 'c')]
    if 'c' `elem` hashMap
        then putStrLn "c is the keys"
        else putStrLn "c is NOT in the keys"
