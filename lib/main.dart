import 'package:ecommerce_mobile_login/generated/l10n.dart'
    as ecommerce_mobile_login_localization;

import 'package:employee_mobile_app/src/utilities/common_exports.dart';

void main() {
  runApp(const _EmployeeMobileApp());
}

class _EmployeeMobileApp extends StatelessWidget {
  const _EmployeeMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController().languageNotifier,
        builder: (context, _, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.initializeAppResources,
              navigatorKey: NavigationServices.navigatorKey,
              onGenerateRoute: NavigationServices.generateRoute,
              supportedLocales: S.delegate.supportedLocales,
              locale: const Locale("de"),
              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                S.delegate,
                ecommerce_mobile_login_localization.S.delegate,
              ],
            ));
  }
}
