import 'package:schoolapp/all_imports.dart';

class HolidayWidget extends StatelessWidget {
  final bool active;
  HolidayWidget({this.active = true});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: active
          ? () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HolidayListScreen(),
              ))
          : () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ThemeColors.primaryBlue),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Holi Holiday",
                  style: MyTextStyles.HOLIDAY_WIDGET_TITLE,
                ),
                Chip(
                  label: Text(
                    "Holiday",
                    style: MyTextStyles.TITLLE.copyWith(fontSize: 16),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Text(
                    "Activate every muscle group to get the results you've always wanted.",
                    style: MyTextStyles.HOLIDAY_WIDGET_TITLE
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "15th March 2021",
                style: MyTextStyles.HOLIDAY_WIDGET_TITLE
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w300),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
