import 'package:employee_mobile_app/src/utilities/common_exports.dart';


class AppController {
  factory AppController() => _singleton;
  static final AppController _singleton = AppController._internal();

  AppController._internal();

  // late GlobalKey<SideMenuState> sliderDrawerKey;

  final ValueNotifier<bool> languageNotifier = ValueNotifier(false);

  final ValueNotifier<bool> workShiftButtonValue = ValueNotifier(false);
}
