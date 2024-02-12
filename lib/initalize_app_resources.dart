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

    context.postFrameCallback(() {
      context.pushNamedAndRemoveUntil(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) => const AppScaffold(
        showBackButton: false,
        disableScrollbar: true,
        physics: NeverScrollableScrollPhysics(),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 80),
              AppLoader(),
              SizedBox(height: 40),
            ],
          ),
        ),
      );
}
