fruits = ["apple", "banana"]
print("Исходный список:", fruits)

fruits.append("orange")
print("Шаг 1 (добавлен orange):", fruits)

fruits.insert(1, "grape")
print("Шаг 2 (вставлен grape на индекс 1):", fruits)

fruits.remove("banana")
print("Шаг 3 (удалён banana):", fruits)

fruits.sort()
print("Шаг 4 (отсортировано):", fruits)

fruits.reverse()
print("Шаг 5 (перевёрнуто):", fruits)
