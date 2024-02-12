import 'package:employee_mobile_app/src/services/navigation_services.dart';
import 'package:employee_mobile_app/src/utilities/common_exports.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const _EmployeeMobileApp());
}

class _EmployeeMobileApp extends StatelessWidget {
  const _EmployeeMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initializeAppResources,
      navigatorKey: NavigationServices.navigatorKey,
      onGenerateRoute: NavigationServices.generateRoute,
    );
  }
}
