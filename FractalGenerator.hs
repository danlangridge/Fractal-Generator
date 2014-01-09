module Main where

randomNumber number = do 
                         return 32

main = do putStrLn "Please enter initial a value" 
          a_value <- getLine
          putStrLn "Please enter initial b value"
          b_value <- getLine
          putStrLn "Please enter c value"
          c_value <- getLine
          putStrLn ("Here is the equation: Z_1 = " ++ a_value ++ "^2 + 2(" ++ b_value ++ "*" ++ a_value ++ ")i - " ++ b_value ++ "^2 + " ++ c_value);
          let new_a = a_value*a_value - b_value*b_value + c_value
          let new_b = 2*a_value*b_value
          putStrLn ("New Z value: " ++ new_a ++ " + " ++ new_b ++ "i")
          
