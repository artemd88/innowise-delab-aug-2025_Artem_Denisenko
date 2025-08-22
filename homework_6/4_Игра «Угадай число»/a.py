from random import randint

number = randint(1,5)
print('Я загадал число от 1 до 5. Попробуй угадать!')
user_number = int(input('Введите число: '))

if user_number>number:
    print('Слишком много!')
elif user_number<number:
    print('Слишком мало!')
else:
    print('Ты угадал!')
