import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
3 Create a function that receives exam score and attendance percentage. Student
passes only if score ≥ 50 AND attendance ≥ 75. Return 'Passed' or 'Failed'.
 */
void main(List<String> arguments) {
  print(checkStudentStatus(50, 75));
  print(checkStudentStatus(75, 80));
  print(checkStudentStatus(40, 80));
  print(checkStudentStatus(50, 60));
}

String checkStudentStatus(int examScore, int attendancePercentage) {
  return (examScore >= 50 && attendancePercentage >= 75) ? "Passed" : "Failed";
}
