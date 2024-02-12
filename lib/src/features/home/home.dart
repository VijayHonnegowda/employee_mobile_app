import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WorkShift(),
      ],
    );
  }
}
