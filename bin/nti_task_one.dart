import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
5 Create a function that receives order amount and distance in kilometers. Free delivery
if order ≥ 300, otherwise delivery fee = distance × 5. Return total amount including
delivery.
 */
void main(List<String> arguments) {
  print(calculateTotalAmount(300, 20));
  print(calculateTotalAmount(200, 10));
  print(calculateTotalAmount(100, 5));
}

double calculateTotalAmount(double orderAmount, double distanceInKilometers) {
  return (orderAmount >= 300)
      ? orderAmount
      : orderAmount + (distanceInKilometers * 5);
}
