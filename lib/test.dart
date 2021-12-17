import 'dart:io';
import 'dart:math';

void main(){
  var i = 0;
  var r = Random();
  var answer = r.nextInt(101);
  print(answer);
  while(i<101){
    stdout.write('Please guess your number: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess!=null) {
      if (guess == answer) {
        print('$guess is CORRECT ❤️');
        break;
      } else if (guess < answer) {
        print("$guess is TOO LOW! ▼");
      } else {
        print('$guess is TOO HIGH!  ▲');
      }
    }
    i++;
  }


}