import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
2 Create a function that receives product price, isPremium, and hasCoupon. Customer
gets 15% discount if premium member OR has coupon. Return final price.
 */
void main(List<String> arguments) {
  print(calculateFinalPrice(100, true, false));
  print(calculateFinalPrice(100, false, true));
  print(calculateFinalPrice(100, true, true));
  print(calculateFinalPrice(100, false, false));
}

double calculateFinalPrice(
  double productPrice,
  bool isPremium,
  bool hasCoupon,
) {
  return (isPremium || hasCoupon) ? productPrice * 0.85 : productPrice;
}
