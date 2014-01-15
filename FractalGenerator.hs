module Main where


getInt = do a <- readLn
            let b = a
            return (read b :: Int)

main = do let a_value = getInt           
          let y = [x | x <-[1..10], mod x 2 == 0, x^x > x*x]
          print a_value 
