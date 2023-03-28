# King Under Attack Detector

Простая программа, которая проверяет, находится ли шахматный король под атакой одной ладьи.

## Установка и как использовать

Для запуска этой программы требуется компилятор C++. После установки компилятора программу можно скомпилировать, выполнив следующую команду в терминале:
```
g++ main.cpp -o main.out
```
После того, как программа скомпилирована, ее можно запустить с помощью следующей команды:
```
./main.out
```
## Входные данные
Программа принимает входные данные от пользователя в виде координат шахматной фигуры. Пользователю предлагается ввести позицию короля и трех ладей. Входные данные должны быть в формате `a-h1-8`. Программа использует регулярные выражения для соответствия входному формату.

## Выходные данные
Программа проверяет, находится ли король под атакой одной ладьи. Если король находится под атакой, программа выводит, какая ладья атакует короля. Если король не подвергается атаке, программа выводит сообщение о том, что король не подвергается атаке.

# Объяснение кода
## Piece Структура
Структура `Piece` используется для хранения координат `X` и `Y` шахматной фигуры.
```
struct Piece {
    int x;
    int y;
};
```
## Ввод
Программа предложит пользователю ввести позицию короля и трех ладей. Входные данные проверяются с помощью регулярных выражений, чтобы убедиться, что они даны в правильном формате.
```
string input;
smatch matches;
regex pattern("[a-h][1-8]"); // regex pattern to match chess piece coordinates
bool validInput = true;

cout << "Enter the king's position (e.g. d5): ";
cin >> input;
validInput = regex_match(input, matches, pattern);
if (validInput) {
    king.x = input[0] - 'a' + 1;
    king.y = input[1] - '0';
}

for (int i = 0; i < 3; i++) {
    cout << "Enter the position of rook " << i + 1 << " (e.g. d5): ";
    cin >> input;
    bool validRook = regex_match(input, matches, pattern);
    if (validRook) {
        rooks[i].x = input[0] - 'a' + 1;
        rooks[i].y = input[1] - '0';
    }
    validInput = validInput && validRook;
}

// Handle invalid input
if (!validInput) {
    cout << "Invalid input: input must be in the format of a-h1-8" << endl;
    return 0;
}
```
## Проверка на предмет атаки
Программа проверяет, находится ли король под атакой одной ладьи. Если король находится под атакой, программа выводит, какая ладья атакует короля.
```
// Check if king is under attack and from which rook
bool underAttack = false;
int threatRook = -1;
for (int i = 0; i < 3; i++) {
    if (rooks[i].x == king.x || rooks[i].y == king.y) {
        underAttack = true;
        if (threatRook == -1) {
            threatRook = i;
        } else {
            cout << "Invalid input: multiple rooks attack the king" << endl;
            return 0;
        }
    }
    // Check if rook could move to the king's position
    if ((rooks[i].x == king.x && abs(rooks[i].y - king.y) <= 1) ||
            (rooks[i].y == king.y && abs(rooks[i].x - king.x) <= 1)) {
            cout << "Invalid input: rook " << i + 1 << " can move the king's position" << endl;
            return 0;
        }
     }
```
## Проверка на одинаковое положение
Следующий блок кода отвечает за проверку того, находятся ли король и ладья на одной позиции:
```
// Check if king is on the same position as a rook
for (int i = 0; i < 3; i++) {
    if (rooks[i].x == king.x && rooks[i].y == king.y) {
        cout << "Invalid input: king is on the same position as rook " << i + 1 << endl;
        return 0;
    }
}
```
Здесь цикл `for` используется для перебора массива ладей, и для каждой ладьи проверяется, равны ли ее позиции `X` и `Y` позициям `X` и `Y` короля. Если это так, то программа выводит сообщение об ошибке и возвращает 0, указывая, что был введен неверный ввод.

## Вывод
Наконец, выводится результат в зависимости от того, находится ли король под атакой или нет:
```
// Print result
if (underAttack) {
    cout << "King is under attack from rook " << threatRook + 1 << endl;
} else {
    cout << "King is not under attack" << endl;
}
```
