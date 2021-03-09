import 'package:schoolapp/all_imports.dart';

class UserAcountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.CHIM),
          backgroundColor: Colors.grey,
          minRadius: 30,
        ),
        SizedBox(
          width: 18,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                "Cheems",
                style: MyTextStyles.TITLLE.copyWith(fontSize: 18),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 5),
            BlueContainer(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Class VII A",
                style: MyTextStyles.TITLLE
                    .copyWith(fontSize: 10, color: ThemeColors.backgroundWhite),
              ),
              // height: 20,
            )
          ],
        ),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(52),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Icon(Icons.keyboard_arrow_down_outlined),
        )
      ],
    );
  }
}
