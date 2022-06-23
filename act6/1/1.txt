void main() {
  print('Main ran');
  final calculated = Calculation(1, 'Jake Brian', 'Yap', 500);
  print(calculated);
  calculated.dummyFunc();
}

class Employee {
  int id;
  String firstname;
  String lastname;
  double salary;
  Employee(this.id, this.firstname, this.lastname, this.salary);
  
  void dummyFunc(){
    print('-');
    print('I am inherited by whoever extends from me!\nJAKE BRIAN YAP BSIT 3A');
  }
}

class Calculation extends Employee {
  Calculation(int id, String firstname, String lastname, double salary) : super(id, firstname, lastname, salary);
  //.05 = 5%
  //.010 = 10%;
  //Leave to 0 if no raise
  late double raisedSalary = salary + (salary * 0);
  late double annualSalary = raisedSalary * 12;
  
  @override
  String toString() => "Id is : $id \nFirst name is: $firstname \nLast name is: $lastname \nSalary is: $raisedSalary \nAnnual Salary is: $annualSalary";
}