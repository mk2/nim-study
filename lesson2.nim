proc getAlphabet(): string =
  var accum = ""
  for letter in 'a'..'z':
    accum.add(letter)
  return accum

const alphabet = getAlphabet()

var
  a = "foo"
  b = 0
  c: int

let
  d = "foo"
  e = 5

a.add("bar")
b += 1
c = 3


proc unexpected(): int =
  var result = 5
  result += 5

echo unexpected()

type
  CustomRange = object
    low: int
    high: int

iterator items(range: CustomRange): int =
  var i = range.low
  while i <= range.high:
    yield i
    inc i

iterator pairs(range: CustomRange): tuple[a: int, b: char] =
  for i in range:
    yield (i, char(i + ord('a')))

for i, c in CustomRange(low: 1, high: 3):
  echo c
