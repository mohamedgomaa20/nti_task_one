import 'dart:io';

/*
10 Create a function that receives driver availability, user balance, and trip cost. Ride
starts if driver available AND balance ≥ trip cost. Return 'Ride Confirmed' or
'Insufficient Conditions'.
 */
void main(List<String> arguments) {
  print("Is a driver available? (y/n):");
  bool driverAvailable = stdin.readLineSync()?.toLowerCase() == "y";
  print("Enter User Balance:");
  double userBalance = double.parse(stdin.readLineSync()!);
  if (userBalance < 0) {
    print("---------------------");
    print("Invalid User Balance");
    print("---------------------");
    return;
  }
  print("Enter Trip Cost:");
  double tripCost = double.parse(stdin.readLineSync()!);
  if (tripCost < 0) {
    print("------------------");
    print("Invalid Trip Cost");
    print("------------------");
    return;
  }

  String rideStatus = checkRideStatus(
    driverAvailable: driverAvailable,
    userBalance: userBalance,
    tripCost: tripCost,
  );
  print("----------------------------------");
  print("Ride Status: $rideStatus");
  print("----------------------------------");
}

String checkRideStatus({
  required bool driverAvailable,
  required double userBalance,
  required double tripCost,
}) {
  return (driverAvailable && userBalance >= tripCost)
      ? "Ride Confirmed"
      : "Insufficient Conditions";
}
