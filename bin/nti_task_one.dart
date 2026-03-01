import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
7 Create a function that receives hasAccessCard and knowsPassword. Door opens only
if both are true. Return 'Door Opened' or 'Access Restricted'.
 */
void main(List<String> arguments) {
  print("Do you have an access card? (y/n):");
  bool hasAccessCard = stdin.readLineSync()?.toLowerCase() == "y";
  print("Do you know the password? (y/n):");
  bool knowsPassword = stdin.readLineSync()?.toLowerCase() == "y";

  print("---------------------------------");
  String doorAccess = checkDoorAccess(
    hasAccessCard: hasAccessCard,
    knowsPassword: knowsPassword,
  );
  print("Door Access Status: $doorAccess");
  print("---------------------------------");
}

String checkDoorAccess({
  required bool hasAccessCard,
  required bool knowsPassword,
}) {
  return (hasAccessCard && knowsPassword) ? "Door Opened" : "Access Restricted";
}
