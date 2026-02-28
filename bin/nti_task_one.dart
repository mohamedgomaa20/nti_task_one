import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
10 Create a function that receives driver availability, user balance, and trip cost. Ride
starts if driver available AND balance ≥ trip cost. Return 'Ride Confirmed' or
'Insufficient Conditions'.
 */
void main(List<String> arguments) {
  print(checkRideStatus(true, 10.0, 5.0));
  print(checkRideStatus(false, 10.0, 5.0));
  print(checkRideStatus(true, 5.0, 10.0));
  print(checkRideStatus(true, 5.0, -10.0));
  print(checkRideStatus(true, -5.0, 10.0));
}

String checkRideStatus(
  bool driverAvailable,
  double userBalance,
  double tripCost,
) {
  if (userBalance < 0) {
    return "Invalid Balance";
  }
  if (tripCost < 0) {
    return "Invalid Trip Cost";
  }

  return (driverAvailable && userBalance >= tripCost)
      ? "Ride Confirmed"
      : "Insufficient Conditions";
}
