import 'dart:io';
import 'dart:math';

void main() {
  comZagWeOtg();
}

void comZagWeOtg() {
  print('Компьютер должен загадать число от 1 до 100');

  int min = 1;
  int max = 100;
  int mid = (max + min) ~/ 2;
  int counter = 1;

  int randomNum = min + Random().nextInt(max - min);
  String comsAnswer = '';

  print('Комп загадал $randomNum, но будем считать что мы этого не знаем');
  while (comsAnswer != 'yes') {
    dynamic ourAnswer = stdin.readLineSync()!;
    int answer = int.parse(ourAnswer);
    counter++;

    if (answer < randomNum) {
      print('больше');
      min = mid;
      mid = (max + min) ~/ 2;
      print('кандидат $mid');
    } else if (answer > randomNum) {
      print('меньше');
      max = mid;
      mid = (max + min) ~/ 2;
      print('кандидат $mid');
    } else {
      print('error');
    }
  }

  print('Количество шагов: $counter');
}
