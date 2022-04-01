# 2.Create a new datetime object with format month-day-year and print it on the console like this:
# Today is: 9-13-2021

from datetime import datetime, date

todaysDate = datetime.today()
print(todaysDate)
print(todaysDate.strftime("%m-%d-%Y"))