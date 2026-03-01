import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
5 Create a function that receives order amount and distance in kilometers. Free delivery
if order ≥ 300, otherwise delivery fee = distance × 5. Return total amount including
delivery.
 */
void main(List<String> arguments) {
  print("Enter your Order Amount:");
  double orderAmount = double.parse(stdin.readLineSync()!);
  if (orderAmount < 0) {
    print("----------------------");
    print("Invalid Order Amount");
    print("----------------------");
    return;
  }
  print("Enter your Distance (in Kilometers):");
  double distanceInKilometers = double.parse(stdin.readLineSync()!);
  if (distanceInKilometers < 0) {
    print("----------------------");
    print("Invalid Distance");
    print("----------------------");
    return;
  }

  double totalAmount = calculateTotalAmount(
    orderAmount: orderAmount,
    distanceInKilometers: distanceInKilometers,
  );
  print("----------------------");
  print("Final Total Amount: $totalAmount");
  print("----------------------");
}

double calculateTotalAmount({
  required double orderAmount,
  required double distanceInKilometers,
}) {
  return (orderAmount >= 300)
      ? orderAmount
      : orderAmount + (distanceInKilometers * 5);
}
