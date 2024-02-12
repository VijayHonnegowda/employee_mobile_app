import 'package:employee_mobile_app/src/utilities/app_constants.dart';
import 'package:mobile_app_platform_widgets/common_exports.dart';

class WorkShiftWidget extends StatelessWidget {
  const WorkShiftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: appController.workShiftButtonValue,
      builder: (context, newButtonValue, child) => Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 68,
              child: ColoredBox(
                color: const Color(0XFFF6F2FF),
                child: AppListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  leading: SvgPicture.string(
                    SvgIcons.pdf,
                    color: Colors.black,
                  ),
                  text: "Work Shift 4th Dec - 8th Dec",
                  subText: const Text("1st Dec 2023 (12mb)"),
                  trailing: SvgPicture.string(
                    SvgIcons.share,
                    color: context.primaryColor,
                  ),
                ),
              ),
            ),
            if (newButtonValue == false) ...{
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                          maxLines: 1,
                          "I have seen this worksheet",
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.bodyMedium),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: SizedBox(
                        height: 32,
                        child: SecondaryButton(
                          text: "Mark as Seen",
                          onTap: () =>
                              appController.workShiftButtonValue.value =
                                  !appController.workShiftButtonValue.value,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            } else ...{
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: SizedBox(
                  height: 32,
                  child: PrimaryButton(
                    backgroundColor: const Color(0XFF70CB67),
                    prefixIcon: SvgPicture.string(
                      SvgIcons.eyeOn,
                      color: Colors.white,
                    ),
                    text: "Work Shift seen",
                    onTap: () => appController.workShiftButtonValue.value =
                        !appController.workShiftButtonValue.value,
                  ),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}
