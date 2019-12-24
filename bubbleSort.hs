bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:y:arrLeft) = bubbleSort(init bubbled) ++ [last bubbled]
    where (smaller,bigger) = if(x <= y) then (x, y) else (y, x)
          bubbled = [smaller] ++ bubbleSort (bigger:arrLeft)
main = do
    putStrLn ("Ascending " ++ (show (bubbleSort [1,5,2,-7,-6,9])))
    putStrLn ("Descending " ++ (show (reverse (bubbleSort [1,5,2,-7,-6,9]))))
