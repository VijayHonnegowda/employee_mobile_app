import 'package:employee_mobile_app/src/utilities/common_exports.dart';

class EmployeeLawDescription extends StatelessWidget {
  const EmployeeLawDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: context.pop,
                    child: SvgPicture.string(
                      SvgIcons.leftArrow,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Et excepturi sit a ducimus.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Et magnam officiis qui voluptas quaerat quae minima. Rerum fugiat excepturi "
                "magni voluptatem in ut rerum similique recusandae. Rerum dolores vitae eos at optio. Rerum porro "
                "at et eum itaque omnis quia. Provident rem vitae. Pariatur esse aperiam quod voluptatem placeat quidem "
                "est odio esse.Exercitationem excepturi voluptatum voluptas nisi quae repellendus est. Cumque vel cupiditate eos."
                " Vel animi aut aut id architecto voluptatibus ut voluptate. Quo cum iure velit. Officiis sint nihil quas explicabo "
                "quia officiis consequuntur ut aut. Aliquid ratione saepe sunt non illum explicabo consequatur fugit minus. Et magnam"
                "officiis qui voluptas quaerat quae minima. Rerum fugiat excepturi magni voluptatem in ut rerum similique recusandae. "
                "Rerum dolores vitae eos at optio. Rerum porro at et eum itaque omnis quia. Provident rem vitae. Pariatur esse aperiam quod "
                "voluptatem placeat quidem est odio esse. Exercitationem excepturi voluptatum voluptas nisi quae repellendus est. Cumque vel cupiditate eos. Vel animi aut aut id ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
