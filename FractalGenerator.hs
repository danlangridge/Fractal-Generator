module Main where

randomNumber number = do 
                         return 32


readValue x = do putStrLn "Please enter " ++ x ++ " value: "
                 return getLine


main = do a_value <- readValue 'a' 
          b_value <- readValue 'b'
          c_value <- readValue 'c'
          putStrLn ("Here is the equation: Z_1 = " ++ a_value ++ "^2 + 2(" ++ b_value ++ "*" ++ a_value ++ ")i - " ++ b_value ++ "^2 + " ++ c_value);
          let new_a = a_value*a_value - b_value*b_value + c_value
          let new_b = 2*a_value*b_value
          putStrLn ("New Z value: " ++ new_a ++ " + " ++ new_b ++ "i")
          
