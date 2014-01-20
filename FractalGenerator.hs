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

-- generate a list of real and imaginary pairs used for generating pixel color
genBMPValues :: (Num a) => a -> a -> a -> a -> [(a, a)]
genBMPValues minX maxX minY maxY = [ ( x, y ) | let a = [minX..maxX], let b = [minY..maxY],
                                           x <- a^2 - 1*b^2 + 2, y <- 2*a*b ] 
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

-- fill header into bmp file
makeBMPHeader x y = do
  return 1

-- generate color value for each pixel given a list of real and imaginary numbers
generatePixelColors pixelData = 2


makeBMP x y = do
  makeBMPHeader x y
  let pixelData = genBMPValues(-x x -y y)
  generatePixelColors pixelData


main =
   print (makeBMP 100 100)
