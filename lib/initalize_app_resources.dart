import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class InitializeAppResources extends StatefulWidget {
  const InitializeAppResources({super.key});

  @override
  State<InitializeAppResources> createState() => _InitializeAppResourcesState();
}

class _InitializeAppResourcesState extends State<InitializeAppResources> {
  @override
  void initState() {
    super.initState();

    /// INITIALIZING THE RESOURCES
    // context.postFrameCallback(
    //       () => appController.initializeAppResources().whenComplete(
    //         () {
    //       // if (appController.isFirstTimeUser) {
    //       // appController.setFirstTimeUserFlagToHive = false;
    //       // context.pushNamedAndRemoveUntil(Routes.appOnboarding);
    //       // return;
    //       // }
    //       context.pushNamedAndRemoveUntil(Routes.home);
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) => const AppScaffold(
        // title: kAppName,
        showBackButton: false,
        disableScrollbar: true,
        physics: NeverScrollableScrollPhysics(),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(height: 40),
              AppLoader(),
              SizedBox(height: 40),
              // BlogCardTabletPortrait(),
              // BlogCardTabletLandscape(),
            ],
          ),
        ),
      );
}
