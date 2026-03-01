import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
3 Create a function that receives exam score and attendance percentage. Student
passes only if score ≥ 50 AND attendance ≥ 75. Return 'Passed' or 'Failed'.
 */
void main(List<String> arguments) {
  print("Enter Your Exam Score (0-100):");
  int examScore = int.parse(stdin.readLineSync()!);
  if (examScore < 0 || examScore > 100) {
    print("=======================");
    print("Invalid Exam Score");
    print("=======================");
    return;
  }
  print("Enter Your Attendance Percentage (0–100):");
  int attendancePercentage = int.parse(stdin.readLineSync()!);
  if (attendancePercentage < 0 || attendancePercentage > 100) {
    print("=============================");
    print("Invalid Attendance Percentage");
    print("=============================");
    return;
  }
  print("=======================");
  String studentStatus = checkStudentStatus(
    examScore: examScore,
    attendancePercentage: attendancePercentage,
  );
  print("Your Status is: $studentStatus");
  print("=======================");
}

String checkStudentStatus({
  required int examScore,
  required int attendancePercentage,
}) {
  return (examScore >= 50 && attendancePercentage >= 75) ? "Passed" : "Failed";
}
