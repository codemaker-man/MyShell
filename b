
#!/bin/bash

# 1 2 3 5 8 ...

func () {
     case $1 in
     1)
       echo 1
       ;;
     2)
       echo 2
       ;;
     *)
       echo $[$(func $[$1-1])+$(func $[$1-2])]
     esac
    }

func $1
