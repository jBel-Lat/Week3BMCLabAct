import 'dart:io';

// void main (){
//     stdout.write('Enter your name: ');
//     String? name = stdin.readLineSync();

//     if (name != null && name.isNotEmpty) {
//       print('Nice to meet you, $name');
//     } else {
//       print('You did not enter a valid enter name');
//     }
// }

// void main() {
//   stdout.write('Enter an Integer: ');
//   String? input = stdin.readLineSync();

//   if (input != null) {
//     int number = int.parse(input);
//     print('you entered: $number');
//   } else {
//     print('No input received');
//   }
// }

// void main() {
//   stdout.write('Enter your age: ');
//   String? ageInput = stdin.readLineSync();

//   if (ageInput != null) {
//     int? age = int.tryParse(ageInput);
//     if (age != null) {
//       print('You are $age years old');
//     } else {
//       print('Invalid age. Please enter a number');
//     }
//   } else {
//     print('No input received');
//   }
// }

// void main() {
//   stdout.write('Enter a decimal number: ');
//   String? input = stdin.readLineSync();

//   if (input != null) {
//     double? value = double.tryParse(input);
//     if (value != null) {
//       print(' You entered: $value');
//     } else {
//       print('that was not a valid decimal number');
//     }
//   }
// }

// void main() {
//   stdout.write('Enter 1st number: ');
//   String? aInput = stdin.readLineSync();

//   stdout.write('Enter 2nd number: ');
//   String? bInput = stdin.readLineSync();

//   if (aInput == null || bInput == null) {
//     print('Missing input');
//     return;
//   }

//   double? a = double.tryParse(aInput);
//   double? b = double.tryParse(bInput);

//   if (a == null || b == null) {
//     print('Please enter a valid number');
//     return;
//   }

//   double sum = a + b;
//   print('Sum = $sum');
// }

// void main () {
//   stdout.write(' Enter 1st number: ');
//   double? a = double.tryParse(stdin.readLineSync() ?? '');

//   stdout.write(' Enter 1st number: ');
//   double? b = double.tryParse(stdin.readLineSync() ?? '');

//   if (a == null || b == null) {
//     print('Invalid Numbers');
//     return;
//   }

//   stdout.write('Choose operator ( +, -, /): ');
//   String? op = stdin.readLineSync();

//   if (op == '+') {
//     print('Results: ${a + b}');
//   } else if (op == '-') {
//     print('Results: ${a - b}');
//   } else if (op == '*') {
//      print('Results: ${a * b}');
//   } else if (op == '/') {
//     if (b == 0) {
//       print('cannot divide by zero');
//     } else {
//       print('Result ${a / b}');
//     }
//   } else {
//     print('Unknown Operator');
//   }
// }

// void main() {
//   stdout.write(' Enter your age: ');
//   String? input = stdin.readLineSync();

//   int? age = int.tryParse(input ?? '');
//   if (age == null) {
//     print('Please enter a valid number');
//     return;
//   }

//   if (age >= 18 && age <= 120) {
//     print('You are eligible to vote');
//   } else if (age < 18 && age > 0) {
//     print(' You are not yet eligible to vote');
//   } else {
//     print('Age value is not realistic');
//   }
// }

// void main() {
//   stdout.write('Enter your starting value: ');
//   int? value = int.tryParse(stdin.readLineSync() ?? '');

//   if (value == null) {
//     print('Invalid Number');
//     return;
//   }

//   value += 10;
//   value *= 2;

//   print('After operations, value = $value');
// }

// void main() {
//   stdout.write('How many number will you enter ');
//   int? count = int.tryParse(stdin.readLineSync() ?? '');

//   if (count == null || count <= 0) {
//     print('Invalid count');
//     return;
//   }

//   List<int> numbers = [];

//   for (int i = 0; i < count; i++) {
//     stdout.write('Enter a number ${i + 1}: ');
//     int? n = int.tryParse(stdin.readLineSync() ?? '');
//     if(n == null) {
//       print('Invalid Number using 0');
//       n = 0;
//     }
//     numbers.add(n);
//   }
//   int sum = 0;
//   for (int n in numbers) {
//     sum += n;
//   }

//   double average = sum / numbers.length;
//   print('Numbers: $numbers');
//   print('Sum: $sum');
//   print('Average: $average');
// }

void main() {
  bool running = true;

  while (running) {
    print('\n=== Simple Menu ====');
    print('1. Greet User');
    print('2 Add two numbers');
    print('3 Exit');

    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        greetUser();
        break;
      case '2':
        addTwoNumbers();
        break;
      case '3':
        running = false;
        print('Uwian na!');
        break;
      default:
        print('Invalid option Try again');
    }
  }
}

void greetUser() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}

void addTwoNumbers() {
  stdout.write('Enter 1st number: ');
  double? a = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter 2nd number');
  double? b = double.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null) {
    print('Invalid numbers');
    return;
  }

  print('Results: ${a + b}');
}