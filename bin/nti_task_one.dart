import 'dart:io';

/*
4 Create a function that receives salary, age, and hasExistingLoan. Loan approved if
salary ≥ 5000, age between 21 and 60, and no existing loan. Return 'Loan Approved'
or 'Loan Rejected'.
 */
void main(List<String> arguments) {
  print("Enter Your Salary:");
  double salary = double.parse(stdin.readLineSync()!);
  if (salary < 0) {
    print("---------------");
    print("Invalid Salary");
    print("---------------");
    return;
  }

  print("Enter Your Age:");
  int age = int.parse(stdin.readLineSync()!);
  if (age <= 0) {
    print("---------------");
    print("Invalid age");
    print("---------------");
    return;
  }
  print("Do you currently have an existing loan? (y/n):");
  bool hasExistingLoan = stdin.readLineSync()?.toLowerCase() == 'y';

  String loanStatus = checkLoanApproval(
    salary: salary,
    age: age,
    hasExistingLoan: hasExistingLoan,
  );
  print("----------------------------");
  print("Loan Status: $loanStatus");
  print("----------------------------");
}

String checkLoanApproval({
  required double salary,
  required int age,
  required bool hasExistingLoan,
}) {
  if (salary >= 5000 && age >= 21 && age <= 60 && !hasExistingLoan) {
    return "Loan Approved";
  } else {
    return "Loan Rejected";
  }
}
