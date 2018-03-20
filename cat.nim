## cat program
## usage: cat a.txt

import os

proc cat(fileName: string) =
  var f = open(fileName, FileMode.fmRead)
  defer: close(f)
  while f.endOfFile == false:
    echo f.readLine()

when declared(paramCount) and declared(paramStr):
  if paramCount() > 0:
    for i in 0..paramCount()-1:
      cat(paramStr(i))
else:
  echo "Not supported in this platform"

