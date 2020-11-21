import 'dart:io';

void main() {
  var data = [12, 23, 43, 76];

  do {
    print("1. Create");
    print("2. Get");
    print("3. Update");
    print("4. Delete");
    print("5. Logout");

    final input = int.parse(stdin.readLineSync());

    if (input == 5) break;

    switch (input) {
      case 1:
        print("Enter value");
        final addInput = int.parse(stdin.readLineSync());

        data.add(addInput);
        break;
      case 2:
        print("1. Full Data");
        print("2. Single Data by index");

        final choice = int.parse(stdin.readLineSync());

        if (choice == 1) {
          print(data);
        } else if (choice == 2) {
          final indexChoice = int.parse(stdin.readLineSync());
          print("Data: ${data[indexChoice]}");
        }
        break;
      case 3:
        print("Enter position");
        final posChoice = int.parse(stdin.readLineSync());
        print("Enter value");
        final valueChoice = int.parse(stdin.readLineSync());
        data[posChoice] = valueChoice;
        break;
      case 4:
        print("Enter position");
        final deletePos = int.parse(stdin.readLineSync());
        data.removeAt(deletePos);
        break;
      default:
        print("Invalid input!");
    }
  } while (true);
}
