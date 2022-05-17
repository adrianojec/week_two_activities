import 'package:week_two_activities/extra_challenge/school.dart';
import 'dart:io';

void CollegeList() {
  List<CollegeEmployee> collegeEmployeeList = [];
  List<Faculty> facultyList = [];
  List<Student> studentsList = [];
  String? userChoice;

  while (userChoice != 'Q' && userChoice != 'q') {
    print(
        'Please choose from:\n(C) College Employee, (F) Faculty, (S) Student or (Q) to quit');
    userChoice = stdin.readLineSync()!;

    switch (userChoice) {
      case 'C':
      case 'c':
        if (collegeEmployeeList.length == 4) {
          print('Only 4 College Employees are allowed. Thank you!');
        } else {
          var college = CollegeEmployee();
          college.setInformation();
          collegeEmployeeList.add(college);
        }
        continue;
      case 'F':
      case 'f':
        if (facultyList.length == 3) {
          print('Only 3 Faculties are allowed. Thank you!');
        } else {
          var faculty = Faculty();
          faculty.setInformation();
          facultyList.add(faculty);
        }
        continue;
      case 'S':
      case 's':
        if (studentsList.length == 7) {
          print('Only 7 Students are allowed. Thank you!');
        } else {
          var student = Student();
          student.setInformation();
          studentsList.add(student);
        }
        continue;
      case 'Q':
      case 'q':
        print('COLLEGE EMPLOYEES\n');
        collegeEmployeeList.isEmpty
            ? print('No data entered. Thank you!')
            : collegeEmployeeList
                .map((data) => data.displayInformation())
                .toList();

        print('*******************\n');
        print('FACULTY\n');
        facultyList.isEmpty
            ? print('No data entered. Thank you!')
            : facultyList.map((data) => data.displayInformation()).toList();
        print('*******************\n');

        print('STUDENT\n');
        studentsList.isEmpty
            ? print('No data entered. Thank you!')
            : studentsList.map((data) => data.displayInformation()).toList();
        break;
      default:
        print('Please choose only from the given letters. Thank you!');
    }
  }
}
