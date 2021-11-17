#!/bin/sh
cd /tmp
/bin/cat <<EOM > win.c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
int main(){
  char str[42];
  sprintf(str, "lldb -p %d", getpid());
  system(str);
}
EOM
gcc win.c
./a.out
