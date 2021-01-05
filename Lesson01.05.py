Revenue = int(input("Введите выручку: "))
Costs = int(input("Введите издержки: "))
if Revenue > Costs:
    print("Фирма прибыльна.")
    print("Прибыль =", (Revenue-Costs))
    print("Рентабельность =", (Revenue-Costs)/Revenue)
    N = int(input("Введите численность сотрудников: "))
    print("Прибыль на одого сотрудника =", (Revenue-Costs)/N)
elif Costs > Revenue:
    print("Фирма убыточна. Убыток =", (Costs-Revenue))
else:
    print("Фирма имеет нулевую прибыль.")