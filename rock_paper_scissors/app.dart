import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final RN = Random();

  do {
    stdout.write(
        "Rock, paper or scissors? (r/p/s) or press q for quit the game. \n");
    final input = stdin.readLineSync();

    if (input == "q") break;

    switch (input) {
      case "r":
      case "p":
      case "s":
        var playerMove;
        final randomNumer = RN.nextInt(3);
        final aiMove = Move.values[randomNumer];

        if (input == "r") {
          playerMove = Move.rock;
        } else if (input == "p") {
          playerMove = Move.paper;
        } else {
          playerMove = Move.scissors;
        }

        print("You played: ${playerMove}");
        print("Opponent played: ${aiMove}");

        if (playerMove == aiMove) {
          print("It's a draw!");
        } else if (playerMove == Move.rock && aiMove == Move.scissors ||
            playerMove == Move.paper && aiMove == Move.rock ||
            playerMove == Move.scissors && aiMove == Move.paper) {
          print("You won!");
        } else {
          print("You lose!");
        }

        break;
      default:
        stdout.write("Invalid input! \n");
    }
  } while (true);
}
