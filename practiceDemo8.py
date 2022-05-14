# import random
# import math

# #Python program to print all the words made from a string of characters
#
# vowel_list = ['a','e','i','o','u']
#
# def return_words(list1):
#     new_list = []
#     w = ''
#     while len(new_list) < math.factorial(len(list1)):
#         w = ''.join(random.sample(list1,len(list1)))
#         if w not in new_list:
#             new_list.append(w)
#     return new_list
#
#
# print(return_words(vowel_list))

# #Python program to remove and print every third number in the list
#
# list1 = input("Declare the list of numbers separated by commas (e.g. 1,2,3,4) :").split(',')
#
# noslist = list(list1)
#
# def reducing_list(noslist):
#     position = 3-1
#     len_list = len(noslist)
#     idx = 0
#     while len_list>0:
#         idx = (position+idx)%len_list
#         print(noslist.pop(idx))
#         len_list -= 1
#
#
# reducing_list(noslist)

# #count the number 4 in a given list

# list1 = input("Declare the list of numbers separated by commas (e.g. 1,2,3,4) :").split(',')
#
# noslist = list(list1)
#
# print(noslist)
# count = 0
# for i in noslist:
#
#     if i=='4':
#         count += 1
#
#
# print(count)

# #Print a histogram from a given list of integers
#
# list1 = input("Declare the list of numbers separated by commas (e.g. 1,2,3,4) :").split(',')
#
# noslist = list(list1)
#
# print(noslist)
#
# for i in noslist:
#     print(int(i) * '@')

#  #program to concatenate all elements in a string and return it

list1 = input("csv:").split(",")

splittedList = list(list1)
string =""
for i in splittedList:
    string += i
print(string)
