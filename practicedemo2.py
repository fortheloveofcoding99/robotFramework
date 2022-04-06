#https: // demoqa.com / text - box

x, y, z = 2, 3.5, "Python"

print("{} {} {} {} {} {}".format("Integer is", x, "Float is", y, "This is concatenate in lang", z))

print("Is of", type(y))

list1 = ["ersten Element", 2, 3.14, 6.023, "zweiten Element"]
print(list1)
list1.append("das funfth element")
print(list1)
list1.insert(2, "kuche")
print(list1)

dict1 = {"Schlussel": "Lektion Eins", 2: "Wichtig", 3: "aufgregt", "vier": 520}

print(dict1)
print(dict1[3])

# fibonacci series
sums = 0

for i in range(0, 9):
    sums = sums + i
    print(sums)

print(6 * 7 + 3);