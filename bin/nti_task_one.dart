import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
1 Create a function that receives username, password, and isAccountActive. Access is
granted only if username equals 'student', password equals 'iti123', and account is
active. Return 'Login Successful' or 'Access Denied'.
 */
void main(List<String> arguments) {
  print(login("Mohamed", "1245", true));
  print(login("Gomaa", "1245", false));
  print(login("student", "iti123", false));
  print(login("student", "iti123", true));
}

String login(String username, String password, bool isAccountActive) {
  if (username == "student" && password == "iti123" && isAccountActive) {
    return "Login Successful";
  } else {
    return "Access Denied";
  }
}
