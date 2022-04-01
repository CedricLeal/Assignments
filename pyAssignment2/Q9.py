# 9.Write a function called show_stars(rows). If rows is 5, it should print the following:
# *
# **
# ***
# ****
# *****

def show_stars(rows):
    for i in range(rows+1):
        print("*" * i)
show_stars(5)