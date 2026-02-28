import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
6 Create a function that receives years of experience and performance rating (1–5).
Employee receives bonus if experience ≥ 3 AND rating ≥ 4. Return 'Bonus Granted' or
'No Bonus'.
 */
void main(List<String> arguments) {
  print(getBonusStatus(5, 5));
  print(getBonusStatus(4, 4));
  print(getBonusStatus(2, 4));
  print(getBonusStatus(4, 2));
  print(getBonusStatus(4, 10));
  print(getBonusStatus(4, -20));
}

String getBonusStatus(int yearsOfExperience, int performanceRating) {
  if (performanceRating < 1 || performanceRating > 5) {
    return "Invalid Rating";
  }
  if (yearsOfExperience < 0) {
    return "Invalid Experience";
  }
  return yearsOfExperience >= 3 && performanceRating >= 4
      ? "Bonus Granted"
      : "No Bonus";
}
