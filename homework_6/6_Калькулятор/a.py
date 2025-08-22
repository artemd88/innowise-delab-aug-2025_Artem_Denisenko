number1 = float(input('Введите первое число: '))
number2 = float(input('Введите второе число: '))
opr = input('Выберите оператор (+,-,*,/): ')
operator = str(opr.strip())

if operator == '+':
    print('Результат:',number1 + number2)
elif operator == '-':
    print('Результат:', number1 - number2)
elif operator == '*':
    print('Результат:', number1 * number2)
elif operator == '/':
    print('Результат:', number1 / number2)
else:
    print('Вы написали неверный оператор.')
