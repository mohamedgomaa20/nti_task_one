import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
4 Create a function that receives salary, age, and hasExistingLoan. Loan approved if
salary ≥ 5000, age between 21 and 60, and no existing loan. Return 'Loan Approved'
or 'Loan Rejected'.
 */
void main(List<String> arguments) {
  print(checkLoanApproval(6000, 22, false));
  print(checkLoanApproval(6000, 62, false));
  print(checkLoanApproval(6000, 22, true));
  print(checkLoanApproval(4000, 22, false));
  print(checkLoanApproval(4000, 20, true));
}

String checkLoanApproval(double salary, int age, bool hasExistingLoan) {
  if (salary >= 5000 && age >= 21 && age <= 60 && !hasExistingLoan) {
    return "Loan Approved";
  } else {
    return "Loan Rejected";
  }
}
