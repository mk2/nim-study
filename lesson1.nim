echo "あなたの名前は？"
var name = readLine(stdin)
echo "Hi, ", name, "!"

case name
of "":
  echo "You have no name."
of "name":
  echo "You kidding."
else:
  echo "wow"
