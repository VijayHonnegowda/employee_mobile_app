class AppController {
  factory AppController() => _singleton;
  static final AppController _singleton = AppController._internal();

  AppController._internal();
}
