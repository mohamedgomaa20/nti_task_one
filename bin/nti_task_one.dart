import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
2 Create a function that receives product price, isPremium, and hasCoupon. Customer
gets 15% discount if premium member OR has coupon. Return final price.
 */
void main(List<String> arguments) {
  print("Enter Product Price:");
  double productPrice = double.parse(stdin.readLineSync()!);
  if (productPrice < 0) {
    print("Invalid Product Price");
    return;
  }
  print("Is your account premium? (y/n):");
  bool isPremium = stdin.readLineSync()?.toLowerCase() == 'y';
  print("Do you have a coupon? (y/n):");
  bool hasCoupon = stdin.readLineSync()?.toLowerCase() == 'y';

  double finalPrice = calculateFinalPrice(
    productPrice: productPrice,
    isPremium: isPremium,
    hasCoupon: hasCoupon,
  );
  print("==================");
  print("Final Price is: $finalPrice");
  print("==================");
}

double calculateFinalPrice({
  required double productPrice,
  required bool isPremium,
  required bool hasCoupon,
}) {
  return (isPremium || hasCoupon) ? productPrice * 0.85 : productPrice;
}
