import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
6 Create a function that receives years of experience and performance rating (1–5).
Employee receives bonus if experience ≥ 3 AND rating ≥ 4. Return 'Bonus Granted' or
'No Bonus'.
 */
void main(List<String> arguments) {
  print("Enter your years of experience:");
  int yearsOfExperience = int.parse(stdin.readLineSync()!);
  if (yearsOfExperience < 0) {
    print("---------------------------");
    print("Invalid years of experience");
    print("---------------------------");
    return;
  }
  print("Enter your performance rating (1-5):");
  int performanceRating = int.parse(stdin.readLineSync()!);
  if (performanceRating < 1 || performanceRating > 5) {
    print("----------------------------------------");
    print("Invalid performance rating. Please enter a value between 1 and 5.");
    print("----------------------------------------");
    return;
  }
  String bonusStatus = getBonusStatus(
    yearsOfExperience: yearsOfExperience,
    performanceRating: performanceRating,
  );
  print("---------------------------");
  print("Bonus Status: $bonusStatus");
  print("---------------------------");
}

String getBonusStatus({
  required int yearsOfExperience,
  required int performanceRating,
}) {
  return yearsOfExperience >= 3 && performanceRating >= 4
      ? "Bonus Granted"
      : "No Bonus";
}
