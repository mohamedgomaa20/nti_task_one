import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
9 Create a function that receives completedLessons and quizScore. Next level unlocks if
completed lessons ≥ 10 AND quiz score ≥ 70. Return 'Level Unlocked' or 'Complete
Requirements'.
 */
void main(List<String> arguments) {
  print(checkLevelUnlock(10, 80));
  print(checkLevelUnlock(10, 60));
  print(checkLevelUnlock(5, 80));
  print(checkLevelUnlock(5, 20));
  print(checkLevelUnlock(5, -10));
  print(checkLevelUnlock(-20, 80));
}

String checkLevelUnlock(int completedLessons, int quizScore) {
  if (completedLessons < 0) {
    return "Invalid Completed Lessons";
  }
  if (quizScore < 0 || quizScore > 100) {
    return "Invalid Quiz Score";
  }
  return (completedLessons >= 10 && quizScore >= 70)
      ? "Level Unlocked"
      : "Complete Requirements";
}
