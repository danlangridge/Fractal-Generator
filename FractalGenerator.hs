module Main where

import System.IO
import Data.Char

maximum' :: (Ord a) => [a] -> a
maximum [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

pixelValue x y = abs (realZ + imaginaryZ)

{-|
creatFile = do 
     writeFile "fractal.bmp" (map toUpper contents)
-}

getInt = do a <- readLn
            let b = a
            return (read b :: Int)

realZ :: (Num a) => a -> a -> a 
realZ a b = a^2 - 1*b^2 + 2 

imaginaryZ a b = 2*a*b

makeBMP x y x_c y_c = 2
{-|
  if x == x_c && y == y_c
    return
  if x == x_c 
     then
       let z_a = realZ x y 
       let z_b = imaginaryZ x y
       makeBMP x y x_c+1 y_c
  if y == y_c
     then
       let z_a = realZ x y 
       let z_b = imaginaryZ x y
       makeBMP x y 0 y_c+1 
-}

makeBMPInit x y = makeBMP x y 0 0

main =
   makeBMPInit 100 100
