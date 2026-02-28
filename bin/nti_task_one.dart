import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
1 Create a function that receives username, password, and isAccountActive. Access is
granted only if username equals 'student', password equals 'iti123', and account is
active. Return 'Login Successful' or 'Access Denied'.
 */
void main(List<String> arguments) {
  print("Enter Your username:");
  String username = stdin.readLineSync()!;

  print("Enter Your password:");
  String password = stdin.readLineSync()!;

  print("Enter Your account status:(true or false)");
  bool isAccountActive = stdin.readLineSync()?.toLowerCase() == "true";

  print("==================");
  print(login(username, password, isAccountActive));
  print("==================");
}

String login(String username, String password, bool isAccountActive) {
  if (username.toLowerCase() == "student" &&
      password.toLowerCase() == "iti123" &&
      isAccountActive) {
    return "Login Successful";
  } else {
    return "Access Denied";
  }
}
