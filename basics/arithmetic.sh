# Arithmetic (use $(( )) for math)
x=10
y=3
echo $((x + y))   # 13
echo $((x * y))   # 30
echo $((x / y))   # 3  (integer division)

# String length
word="hello"
echo "length of string is ${#word}"