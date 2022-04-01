# 3.Define a new class called Person. Using the Python naming convention, add the following properties to the Person class:
#
# Name: Bob
# Last Name: Dylan
# Birth Date: May 24, 1941
# All properties values must be string.
#
# Name your properties in this way: name, last_name and birth_date
# Please update the constructor of the class to allow the name, last_name and birth_date to be passed as a parameter, in that same order.
# Print the properties of class in method.
# Person has the function get_age to calculate a person's age.create a new function called can_vote
# that returns a boolean true or false depending on the person's legal right to vote.
class Person:
    def __init__(self, args):
        self.name = args[0]
        self.last_name = args[1]
        self.birth_date = args[2]

    def printdetails(self):
        print(f"Name :{self.name}")
        print(f"Last Name :{self.last_name}")
        print(f"Date of birth :{self.birth_date}")

    def is_eligible(self, age):
        if age >= 18:
            return True
        else:
            return False


ammy = Person(["Ammy", "Pearson", "7 June, 2001"])

ammy.printdetails()
print(ammy.is_eligible(14))