import Data.HashMap.Lazy
isMember n [] = False
isMember n (x:xs)
    | n == x = True
    | otherwise = isMember n xs
main = do
    let hashMap = fromList [(1 :: Int, 'a'), (2, 'b'), (3, 'c')]
    putStrLn (show (isMember 'e' (elems hashMap)))