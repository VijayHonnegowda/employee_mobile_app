import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class Routes {
  static const String home = 'home';
  static const String employeeLawDescription = 'employeeLawDescription';
  static const String initializeAppResources = '/';
}

class NavigationServices {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initializeAppResources:
        return context.appPageRoute((_) => const InitializeAppResources());
      case Routes.home:
        return context.appPageRoute((_) => const Home());
      case Routes.employeeLawDescription:
        return context.appPageRoute((_) => const EmployeeLawDescription());
      default:
        return context.appPageRoute(
          (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
