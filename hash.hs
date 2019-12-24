import Data.HashMap.Lazy

main = do
    let hashMap = fromList [(1 :: Int, 'a'), (2, 'b'), (3, 'c')]
    putStrLn (show ('c' `elem` (elems hashMap)))
