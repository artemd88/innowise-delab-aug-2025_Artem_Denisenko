string = "Python Programming"

print(f'в строке: "{string}"')
print(f'1. количество символов: {len(string)}')
print(f'2. 7-й символ (по индексу): "{string[7]}"')
print(f'3. последние три символа: "{string[-3:]}"')
print(f'4. содержит ли подстроку "gram": {"да" if "gram" in string else "нет"}')
