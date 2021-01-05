a = int(input("Введите число: "))
b = 0
while a > 0:
    b = max(b, (a % 10))
    a = (a // 10)
print("Максимальная цифра:",b)
