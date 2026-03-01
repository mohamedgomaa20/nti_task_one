import 'dart:io';

import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
8 Create a function that receives electricity usage (kWh). usage < 200 → 'Low
Consumption', 200–500 → 'Medium Consumption', above 500 → 'High Consumption'.
Return the category.
 */
void main(List<String> arguments) {
  print("Enter Your electricity usage (kWh):");
  double electricityUsageInKWh = double.parse(stdin.readLineSync()!);

  if (electricityUsageInKWh < 0) {
    print("--------------------------");
    print("Invalid electricity usage.");
    print("--------------------------");
    return;
  }

  String category = checkElectricityUsage(electricityUsageInKWh);

  print("------------------------------------------");
  print("Electricity Usage Category: $category");
  print("------------------------------------------");
}

String checkElectricityUsage(double electricityUsageInKWh) {
  if (electricityUsageInKWh < 200) {
    return "Low Consumption";
  } else if (electricityUsageInKWh <= 500) {
    return "Medium Consumption";
  } else {
    return "High Consumption";
  }
}
