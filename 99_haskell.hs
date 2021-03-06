myLast :: [a] -> a
myLast (x:[]) = x
myLast (x:xs) = myLast(xs)

secondToLast :: [a] -> a
secondToLast (x:z:[]) = x
secondToLast (x:xs) = secondToLast(xs)

elementAt :: [a] -> Int -> a
elementAt (x:xs) 0 = x
elementAt (x:xs) n = elementAt xs (n-1)


isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- P14 duplicate list
duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = [x] ++ [x] ++ duplicate(xs)

-- P15 replicate list
repli :: [a] -> Int -> [a]
repli [] n = []
repli (x:xs) n = let replicated k = ((if k == 0 then [] else ([x] ++ (replicated (k-1))))) in (replicated n) ++ (repli xs n)
