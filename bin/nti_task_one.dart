import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
7 Create a function that receives hasAccessCard and knowsPassword. Door opens only
if both are true. Return 'Door Opened' or 'Access Restricted'.
 */
void main(List<String> arguments) {
  print(checkDoorAccess(true, true));
  print(checkDoorAccess(true, false));
  print(checkDoorAccess(false, true));
  print(checkDoorAccess(false, false));
}

String checkDoorAccess(bool hasAccessCard, bool knowsPassword) {
  return (hasAccessCard && knowsPassword) ? "Door Opened" : "Access Restricted";
}
