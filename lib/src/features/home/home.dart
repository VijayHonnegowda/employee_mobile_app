import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              WorkShiftWidget(),
              SizedBox(height: 12),
              EmployeeLawWidget(),
              SizedBox(height: 12),
              DocumentsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
