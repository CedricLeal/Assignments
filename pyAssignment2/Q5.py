# 5.Write a function called fizz_buzz that takes a number.
# If the number is divisible by 3, it should return “Fizz”.
# If it is divisible by 5, it should return “Buzz”.
# If it is divisible by both 3 and 5, it should return “FizzBuzz”.
# Otherwise, it should return the same number.

def fizz_buzz(num):

    if num%15 == 0:
        return "FizzBuzz"
    elif num%3 == 0:
        return "Fizz"
    elif num%5 == 0:
        return "Buzz"
    else:
        return num

for i in range(1, 100):
    print(fizz_buzz(i))
