

# 10.Write a function that prints all the prime numbers between 0 and limit where limit is a parameter.

def prime(limit):
    temp = []
    if limit == 2:
        temp.append(limit)
    elif limit == 3:
        temp.append(limit)
    else:
        for j in range(4,limit):
                for i in range(2, j-1):
                    if j%i ==0:
                        break
                    else:
                        temp.append(j)
                        break
    return temp

print(prime(100))