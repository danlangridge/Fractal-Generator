module Main where


getInt = do a <- readLn
            let b = a
            return (read b :: Int)

realZ :: float -> float -> float
realZ a b = a^2 - 1*b^2 + 2 

imaginaryZ :: float -> float -> float
imaginaryZ a b = 2*a*b

makeBMP x y x_c y_c = do  
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

makeBMPInit x y = makeBMP x y 0 0

main =
  makeBMPInit 100 100
