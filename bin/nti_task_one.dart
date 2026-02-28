import 'package:nti_task_one/nti_task_one.dart' as nti_task_one;

/*
8 Create a function that receives electricity usage (kWh). usage < 200 → 'Low
Consumption', 200–500 → 'Medium Consumption', above 500 → 'High Consumption'.
Return the category.
 */
void main(List<String> arguments) {
  print(checkElectricityUsage(100));
  print(checkElectricityUsage(300));
  print(checkElectricityUsage(600));
  print(checkElectricityUsage(-1000));
}

String checkElectricityUsage(double electricityUsageInKWh) {
  if (electricityUsageInKWh < 0) {
    return "Invalid Usage";
  } else if (electricityUsageInKWh < 200) {
    return "Low Consumption";
  } else if (electricityUsageInKWh <= 500) {
    return "Medium Consumption";
  } else {
    return "High Consumption";
  }
}
