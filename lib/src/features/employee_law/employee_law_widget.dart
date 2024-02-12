import 'package:mobile_app_platform_widgets/common_exports.dart';
import 'package:employee_mobile_app/src/services/navigation_services.dart';

class EmployeeLawWidget extends StatelessWidget {
  const EmployeeLawWidget({super.key});

  @override
  Widget build(BuildContext context) => Card(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            context.pushNamed(Routes.employeeLawDescription);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Et excepturi sit a ducimus.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF2D2C2F),
                      ),
                    ),
                    SvgPicture.string(SvgIcons.rigthArrow),
                  ],
                ),
                const Text(
                  'Nemo magni excepturi sint. Consequuntur non in repellat quo ut nisi',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2D2C2F),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
