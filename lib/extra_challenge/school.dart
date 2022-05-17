import 'dart:io';

class Person {
  late String firstName;
  late String lastName;
  late String streetAddress;
  late int zipCode;
  late int phoneNumber;

  void setInformation() {
    print('Enter your first name: ');
    firstName = stdin.readLineSync()!;
    print('Enter your last name: ');
    lastName = stdin.readLineSync()!;
    print('Enter your street address: ');
    streetAddress = stdin.readLineSync()!;
    print('Enter your zip code: ');
    zipCode = int.parse(stdin.readLineSync()!);
    print('Enter your phone number: ');
    phoneNumber = int.parse(stdin.readLineSync()!);
  }

  void displayInformation() {
    print(
        'Fullname: $lastName, $firstName\nAddress: $streetAddress, $zipCode\nPhone Number: $phoneNumber');
  }
}

class CollegeEmployee extends Person {
  late int socialSecurityNumber;
  late double annualSalary;
  late String department;

  @override
  void setInformation() {
    super.setInformation();
    print('Enter your social security number: ');
    socialSecurityNumber = int.parse(stdin.readLineSync()!);
    print('Enter your annual salary: ');
    annualSalary = double.parse(stdin.readLineSync()!);
    print('Enter your department: ');
    department = stdin.readLineSync()!;
  }

  @override
  void displayInformation() {
    super.displayInformation();
    print(
        'Social Security Number: $socialSecurityNumber\nAnnual Salary: $annualSalary\nDepartment: $department');
  }
}

class Faculty extends CollegeEmployee {
  late bool isTenured;

  @override
  void setInformation() {
    super.setInformation();
    print('Tenured? (true or false): ');
    var checkIfTrue = stdin.readLineSync()!;
    checkIfTrue == 'true' ? isTenured = true : isTenured = false;
  }

  @override
  void displayInformation() {
    super.displayInformation();
    print('Is Tenured: $isTenured');
  }
}

class Student extends Person {
  late String majorOfStudy;
  late double gradeAverage;

  @override
  void setInformation() {
    super.setInformation();
    print('Mejor Field of Study: ');
    majorOfStudy = stdin.readLineSync()!;
    print('Grade Point Average: ');
    gradeAverage = double.parse(stdin.readLineSync()!);
  }

  @override
  void displayInformation() {
    super.displayInformation();
    print(
        'Major Field of Study: $majorOfStudy\nGrade Point Average: $gradeAverage\n');
  }
}
