import 'dart:io';
import 'dart:math';

class Game {
  int answer = 0;
  var total = 0;

  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    print('Answer = $answer');
    print('╔═══════════════════════════════════════════════════');
    print('║                   GUESS THE NUMBER');
    print('╟───────────────────────────────────────────────────');
  }

  int doGuess(int num) {
    if (num > answer) {
      print('║   ➜ $num is TOO HIGH! ▲');
      print('╟───────────────────────────────────────────────────');
      total++;
      return 0;
    }
    else if (num < answer) {
      print('║   ➜ $num is TOO LOW! ▼');
      print('╟───────────────────────────────────────────────────');
      total++;
      return 0;
    }
    else {
      total++;
      print('║   ➜ $num is correct  ❤, total guesses : $total');
      print('╟───────────────────────────────────────────────────');
      stdout.write('║ Select "Yes Or No" to play next round : ');

      var select = stdin.readLineSync();
      if (select == 'Yes' || select == 'yes' || select == 'y' || select == 'Y') {
        total = 0;
        var r = Random();
        answer = r.nextInt(100) + 1;
        print('Answer = $answer');
        print('╟───────────────────────────────────────────────────');
        return 0;
      }
      print('╟───────────────────────────────────────────────────');
      print('║                   THE END');
      print('╚═══════════════════════════════════════════════════');
      return 1;
    }
  }
}

