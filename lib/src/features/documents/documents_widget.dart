import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class DocumentsWidget extends StatelessWidget {
  const DocumentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: AppListTile(
        contentPadding: EdgeInsets.all(16),
        text: "Salary Slip 12.2023",
        subText: const Text("1st Dec 2023 (12mb)"),
        trailing: SvgPicture.string(SvgIcons.download, color: context.primaryColor,),
        leading: SvgPicture.string(SvgIcons.pdf, color: Colors.black,),
      ),
    );
  }
}
