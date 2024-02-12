import 'package:mobile_app_platform_widgets/common_exports.dart';

class AppController {
  factory AppController() => _singleton;
  static final AppController _singleton = AppController._internal();

  AppController._internal();

  final ValueNotifier<bool> languageNotifier = ValueNotifier(false);

  final ValueNotifier<bool> workShiftButtonValue = ValueNotifier(false);
}
