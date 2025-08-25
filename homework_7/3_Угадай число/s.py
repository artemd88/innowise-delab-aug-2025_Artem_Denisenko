from random import randint

number = randint(1,10)

while True:
    user_number = int(input('Угадайте число от 1 до 10: '))
    if user_number < 1 or user_number > 10:
        print("Число должно быть от 1 до 10.")
        continue

    if user_number>number:
        print('Слишком много!')
    elif user_number<number:
        print('Слишком мало!')
    else:
        print('Поздравляю! Вы угадали!')
        break
