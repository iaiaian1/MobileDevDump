import 'dart:io';

void main()
{
    print("Enter first number: ");
    String? firstInput = stdin.readLineSync();
    print("Enter second number: ");
    String? secondInput = stdin.readLineSync();

    int firstNumber = 0, secondNumber = 0;

    //Parse into int
    if (firstInput != null){
      firstNumber = int.parse(firstInput);
    }
    if (secondInput != null){
      secondNumber = int.parse(secondInput);
    }

    int sum = firstNumber + secondNumber;
    if (firstNumber == secondNumber){
      sum = sum * 3;
    }

    // Printing
    print("Hello, $sum!");
}