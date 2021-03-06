# Домашнее задание №4 "Архитектура ВС уровня системы (набора) команд"

*Задача: Тексты, состоящие из цифр и латинских букв, зашифрованные различными способами, Вариант 135 (9, 10)*

## Условия задачи

### Базовые альтернативы

- Шифрование заменой символов (указатель на массив пар:  [текущий символ, замещающий символ]; зашифрованный текст –
  строка символов)
- Шифрование циклическим сдвигом кода каждого символа на n (целое число, определяющее сдвиг; зашифрованный текст –
  строка символов)
- Шифрование заменой символов на числа  (пары: текущий символ, целое число – подстановка при шифровании кода символа в
  виде короткого целого; зашифрованный текст – целочисленный массив)

### Общие для всех альтернатив переменные

- Открытый текст – строка символов

### Общие для всех альтернатив функции

- Частное от деления суммы кодов незашифрованной строки на число символов в этой строке (действительное число)

## Функционал

После размещения данных в контейнер необходимо осуществить их обработку в соответствии с вариантом задания.
Обработанные данные после этого заносятся в отдельный файл результатов. Упорядочить элементы контейнера по возрастанию
используя сортировку с помощью прямого включения (Straight Insertion). В качестве ключей для сортировки и других
действий используются результаты функции, общей для всех альтернатив.

## Тесты

Все тесты лежат в папке **tests** <br> Входные данные хранятся в каталоге **input** <br> Выходные данные хранятся в каталоге **output** <br>
Пример ввода:

```
6
3 "" 3 a-1 b-2 c-3
3 "2345" 3 2-4 4-9 3-5
3 "10" 2 1-0 0-1
1 "ACS+HUmexUrk!" 3 +-  U-o x-w
2 "" 1
3 "12345" 5 1-10 2-20 3-30 4-40 5-50
```

Пример вывода:

```
There are  6 elements in container
1. "", Hash=0; Count of replacements:  3 ; Symbols:  a <-> 1 b <-> 2 c <-> 3  ; Result:  [  ]
2. "2345", Hash=52; Count of replacements:  3 ; Symbols:  2 <-> 4 4 <-> 9 3 <-> 5  ; Result:  [ 4 5 9 5 ]
3. "10", Hash=48; Count of replacements:  2 ; Symbols:  1 <-> 0 0 <-> 1  ; Result:  [ 0 1 ]
4. "ACS+HUmexUrk!", Hash=83; Count of replacements:  3 ; Symbols:  + <->   U <-> o x <-> w  ; Result:  ACS Homework!
5. "", Hash=0; ReplaceShift: 1; Result: ""
6. "12345", Hash=51; Count of replacements:  5 ; Symbols:  1 <-> 10 2 <-> 20 3 <-> 30 4 <-> 40 5 <-> 50  ; Result:  [ 10 20 30 40 50 ]

-----Straight Insertion-----

There are  6 elements in container
1. "", Hash=0; Count of replacements:  3 ; Symbols:  a <-> 1 b <-> 2 c <-> 3  ; Result:  [  ]
2. "", Hash=0; ReplaceShift: 1; Result: ""
3. "10", Hash=48; Count of replacements:  2 ; Symbols:  1 <-> 0 0 <-> 1  ; Result:  [ 0 1 ]
4. "12345", Hash=51; Count of replacements:  5 ; Symbols:  1 <-> 10 2 <-> 20 3 <-> 30 4 <-> 40 5 <-> 50  ; Result:  [ 10 20 30 40 50 ]
5. "2345", Hash=52; Count of replacements:  3 ; Symbols:  2 <-> 4 4 <-> 9 3 <-> 5  ; Result:  [ 4 5 9 5 ]
6. "ACS+HUmexUrk!", Hash=83; Count of replacements:  3 ; Symbols:  + <->   U <-> o x <-> w  ; Result:  ACS Homework!
```

## C

Время работы программы на разных размерах входных данных:

Количество | Время, seconds |  Память, KB
--- | --- | --- 
`5` | < `0.001` | `~2600`
`100` | < `0.01` | `~2789`
`1000` | `0.01` | `~3894`
`10000` | `0.45` | `~4924`
`100000` | `1.8` | `~6268`


## C++

Время работы программы на разных размерах входных данных:

Количество| Время, seconds | Память, KB
--- | --- | --- 
`5` | < `0.001` | `~2500`
`100` | < `0.01` | `~2800`
`1000` | `0.015` | `~3500`
`10000` | `0.3` | `~4300`
`100000` | `1` | `~4800`

## Python
Время работы программы на разных размерах входных данных:

Количество  | Время, seconds | Память, KB
--- | --- | --- 
`5` | < `0.001` | `~3600`
`100` | < `0.015` | `~5780`
`1000` | `0.038` | `~8976`
`10000` | `0.42` | `~20572`
`100000` | `2.1` | `~51283`

---
## Плюсы и минусы

###Плюсы


>На нем можно легко (он для этого и предназначен) использовать как 16-, 32-разрядные, так и новые 64-разрядные регистры  под ОС х64.
>
> Только язык Ассемблер может полностью раскрыть архитектуру компьютера
> 
>Параллельная обработка данных наиболее просто возможна только с применением ассемблерных команд
> 
>Выполняется намного быстрее и занимает значительно меньше памяти
> 
> Можно писать в любом редакторе

###Минусы


> Очень высокая сложность для чтения и понимания кода
>
> Разработка больших программ на языке ассемблера выполняется медленнее. Объём текста программы по количеству команд оказывается больше из-за машинных команд
>
>Отсутствует возможность прямой простой переносимости программ на языке ассемблера на компьютеры с другой архитектурой и системой команд.



## Характеристики программы:

| Метрика | Значение |
| :---: | --- |
| Общий размер исходных текстов программы | 59.3 KB |
