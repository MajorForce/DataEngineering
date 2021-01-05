time = int(input("Введите время в секундах: "))
hour = time // (60 * 60)
min = (time % (60 * 60)) // 60
sec = time % 60
print("Результат:",time,"секунд или",f"{hour:02}:{min:02}:{sec:02}")
