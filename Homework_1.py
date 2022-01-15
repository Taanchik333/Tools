# Homework_1
# 1) Создать переменную типа String
a = 'good'
print('Type_a = ', type(a))

# 2) Создать переменную типа Integer
b = 25
print('type_b = ', type(b))

# 3) Создать переменную типа Float
hight = 155.5
print('type_hight =', type(hight))

# 4) Создать переменную типа Bytes
by_1 = bytes('YES', 'UTF-8')
print('Type_by_1 =', type(by_1))
print(by_1)

by_2 = bytes(5)
print('Type_by_2 =', type(by_2))
print(by_2)

# 5) Создать переменную типа List
c = [1,5]
print('type_c = ', type(c))

# 6) Создать переменную типа Tuple
q = (1,5)
print('type_c = ', type(q))

# 7) Создать переменную типа Set
m = {'h','e','l','l','o'}
o = {'d','2'}
print('type_m= ', type(m))
print('type_o= ', type(o))
print(m,o)

# 8. Создать переменную типа Frozen set
x = frozenset('great')
print('type_x = ', type(x))
print(x)

# 9) Создать переменную типа Dict
do = {'apple': 1, 'banana':2}
print('type_do = ', type(do))
print(do)

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(type(a), type(b), type(hight),type(by_1), type(by_2), type(c), type(q), type(m), type(o), type(x), type(do))
#
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.

one = 'Hi'
two = 'Tanya'
three = one + " " + two
print(three)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print(a,b)

# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print(a + " " + str(b))