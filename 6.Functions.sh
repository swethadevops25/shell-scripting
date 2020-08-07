#!/bin/blash

sample{} {
  a=30  
  echo hello world from function
  echo a in function = $a
  b=20
}

# call the function


# Main program
a=10
sample
echo a in main program = $a
echo b in main program =$b


