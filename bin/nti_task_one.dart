import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
9 Create a function that receives completedLessons and quizScore. Next level unlocks if
completed lessons ≥ 10 AND quiz score ≥ 70. Return 'Level Unlocked' or 'Complete
Requirements'.
 */
void main(List<String> arguments) {
  print("Enter your completed lessons:");
  int completedLessons = int.parse(stdin.readLineSync()!);
  if (completedLessons < 0) {
    print("-----------------------------------");
    print("Invalid number of completed lessons.");
    print("-----------------------------------");
    return;
  }
  print("Enter your quiz score (0–100):");
  int quizScore = int.parse(stdin.readLineSync()!);
  if (quizScore < 0 || quizScore > 100) {
    print("-----------------------------------------------------------");
    print("Invalid quiz score. Please enter a value between 0 and 100.");
    print("-----------------------------------------------------------");
    return;
  }

  String levelStatus = checkLevelUnlock(
    completedLessons: completedLessons,
    quizScore: quizScore,
  );
  print("-------------------------------------");
  print("Level Status: $levelStatus");
  print("-------------------------------------");
}

String checkLevelUnlock({
  required int completedLessons,
  required int quizScore,
}) {
  return (completedLessons >= 10 && quizScore >= 70)
      ? "Level Unlocked"
      : "Complete Requirements";
}
