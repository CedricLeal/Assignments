# 1.Counter class declared that contains 4 functions:
# constructor: This function will initialize the value of the counter.
# increase_one: This function will increase the value of the counter by one.
# decrease_one: This function will decrease the value of the counter by one.
# get_value: This function will return the value of the counter.
# All functions are empty and your job is to fill them with the proper code needed to make it work as expected.
#
# Fill the content of the class Counter to make it behave as expected.
#
# Initialize a variable self.counter and use it in every function.
# If your class behaves as expected, the output in the console should be:
# 1
# 3
# 1

class Counter():

    def __init__(self,num):
        self.num = num

    def increase_one(self):
        self.num+=1
        return self.num

    def decrease_one(self):
        self.num-=1
        return self.num

    def get_value(self):
        return self.num


dObj = Counter(21)
dObj.decrease_one()
dObj.decrease_one()
print(dObj.get_value())


