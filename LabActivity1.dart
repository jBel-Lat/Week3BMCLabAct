import 'dart:io';
void main(){
  bool run = true;
  stdout.write("Enter Your name: ");
  String? name = stdin.readLineSync(); 

  while(run){
    print("\n==============================\n   Main Menu\n============================== \n1. Budget Tracker\n2. Grade Calculator\n3. Exit");
    stdout.write("Enter your choice (1-3): "); 
    String? choice = stdin.readLineSync();

    switch(choice){
      case "1":
        budget();
        break;
      case '2':
        grade(name);
        break;
        case 3:
        print("\nThank you for using the program!");
        run = false;
      default:
        print('Invalid option Try again');
    }
  }
}

double positive(String message){
  double? value;
  while(true){
    
    stdout.write(message);
    value = double.tryParse(stdin.readLineSync()!);

    if (value != null  && value > 0){
      
      return value;
    }
    else {
      print("Invalid input. Enter a valid number");
    }
  }
}

double readGrade(String message){
  double? grades;
  while(true){
    stdout.write(message);
    grades = double.tryParse(stdin.readLineSync()!);

    if (grades != null && grades >= 0 && grades <= 100){
      return grades;
    }
    print("Invalid input. Enter a grade between 0 and 100.");
  }
}

void budget(){
  
  double  all = positive("Enter  your allowance: ");
  double fud = positive("Enter  your Food expenses: ");
  double trans = positive("Enter  your transportaion expenses: ");
  double eskul  =   positive("Enter  your school expenses: ");
  double aders = positive("Enter your other expenses: ");
  int a=100;
  double f = (fud/all)*a, t=(trans/all)*a, e=(eskul/all)*a  , aa=(aders/all)*a;

  double expen = fud+trans+eskul+aders;
  double total = all - expen;

  print("====Percentage of Expenses====\nFood: ${a.toStringAsFixed(2)}%\nTransportation: ${t.toStringAsFixed(2)}%\nSchool: ${e.toStringAsFixed(2)}%\nOthers: ${aa.toStringAsFixed(2)}%");
  
  if(expen > all){
    print("Warning: Your plan exceeds your allowance!");
  }else if(expen==all){
    print("You are spending exactly your allowance. No savings left.");
  }else if (expen < all && total >= all *0.2){
    print("Great! You are saving at least 20% of your allowance.");
  }else{
    print("You are within budget, but your savings are less than 20%");
  }
  

}

void grade(name){
  print("\n===== GRADE CALCULATOR =====");

  int? quizzes;
  while(true){
    stdout.write("Enter the number of quizzes:  ");
    quizzes = int.tryParse(stdin.readLineSync()!);
    
    if(quizzes != null && quizzes > 0){
      break;
    }
      print("Invalid input");
  }

  double totalquizzes = 0;

  for (int i = 1; i <= quizzes;i++ ){
      double score = readGrade("Quiz $i score: ");
      totalquizzes += score;

  }
  
  double quizAve = totalquizzes/quizzes;
  double midterm = readGrade("Midterm Score: ");
  double finals = readGrade("Final score: ");

  double  finalGrades = (quizAve/0.3)+(midterm/0.3)+(finals/0.4);

  if(finalGrades >= 90){
    print("Excellent, $name! Grade: A");
  }else if(finalGrades >= 80){
    print("Very good, $name! Grade: B");
  }else if(finalGrades >= 70){
    print("Good, $name! Grade: C");
  }else if(finalGrades >= 60){
    print("Needs improvement. Grade: D");
  }else{
    print("At risk, $name. Grade: F");
  }
  

}

// void greet(){
//   stdout.write("Enter  your name:");
//   String? name = stdin.readLineSync();
//   print("Hi $name!");
// }

// void  budget(){
//   stdout.write("Enter your allowance: ");
//   double? all = double.parse(stdin.readLineSync()!);
// if (all > 0){
  
//   stdout.write("Enter your food expenses: ");
//   double? fud = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter your food Transportation: ");
//   double? trans = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter your food School  materials: ");
//   double? eskul = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter your food Others: ");
//   double? aders = double.parse(stdin.readLineSync()!);
//   }
// else  ("invalid input");
// }