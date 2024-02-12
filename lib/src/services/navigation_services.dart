
import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class Routes {
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
      default:
        return context.appPageRoute(
          (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
