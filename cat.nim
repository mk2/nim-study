## cat program
## usage: cat a.txt

import os

proc catBody(f: File) =
  while f.endOfFile == false:
    echo f.readLine()

proc cat(fileName: string) =
  var f = open(fileName, FileMode.fmRead)
  defer: close(f)
  catBody(f)

when declared(paramCount) and declared(paramStr):
  if paramCount() > 0:
    for i in 1..paramCount():
      cat(paramStr(i))
  else:
    catBody(stdin)
else:
  echo "Not supported in this platform"

