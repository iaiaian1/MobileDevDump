import 'dart:io';
main(){
  print("Enter first number: ");
  String? firstInput = stdin.readLineSync();
  print("Enter second number: ");
  String? secondInput = stdin.readLineSync();
  print("Enter operation: (+ - * /)");
  var operation = stdin.readLineSync();

  //Define
  double firstNumber = 0, secondNumber = 0;

  //Parse into int
  if (firstInput != null){
    firstNumber = double.parse(firstInput);
  }
  if (secondInput != null){
    secondNumber = double.parse(secondInput);
  }

  //Call and pass
  calculate(firstNumber, secondNumber, operation);
}

void calculate(double param1, double param2, var operation){
  //Define sum
  double sum = 0;

  //Determine what operation to do
  switch(operation){
    case "+": 
      sum = param1 + param2;
      break;
    case "-": 
      sum = param1 - param2;
      break;
    case "*": 
      sum = param1 * param2;
      break;
    case "/": 
      sum = param1 / param2;
      break;
  }

  // Printing
  print("Result: $sum");
}