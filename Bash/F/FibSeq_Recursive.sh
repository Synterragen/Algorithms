#!/usr/bin/env bash

fibonacciSequence() {
  if [ $1 -le 0 ] then
    echo 0
    return 0
  fi
  
  if [ $1 -le 2 ] then
    echo 1
  else
    x=$(fib $[$1-1])
    y=$(fib $[$1-2])
    echo $(($x+$y))
  fi
}
