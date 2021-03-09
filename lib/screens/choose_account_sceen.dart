import 'dart:math';
import 'package:schoolapp/all_imports.dart';

class ChooseAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            BlueContainer(
              height: 50,
              width: 50,
            ),
            SizedBox(height: 20),
            Text(
              "Choose the account",
              style: MyTextStyles.TITLLE.copyWith(fontSize: 22),
            ),
            SizedBox(height: 5),
            Text(
              "confirm your id",
              style: MyTextStyles.SUB_TITLLE,
            ),
            SizedBox(height: 30),
            UserAcountWidget(),
            Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text:
                        "By continuing, you agree to the #school_app_project\n",
                    style: MyTextStyles.SUB_TITLLE.copyWith(fontSize: 12.5)),
                TextSpan(
                    text: "Terms of Service",
                    style: MyTextStyles.SUB_TITLLE
                        .copyWith(fontSize: 12.5, color: Colors.blueGrey)),
                TextSpan(
                    text: " & ",
                    style: MyTextStyles.SUB_TITLLE.copyWith(fontSize: 12.5)),
                TextSpan(
                    text: "Privacy Policy",
                    style: MyTextStyles.SUB_TITLLE
                        .copyWith(fontSize: 12.5, color: Colors.blueGrey)),
              ]),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 19)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(Assets.BACK_ARROW),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => VerifyPinScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Accept & Continue  ",
                          style: TextStyle(
                              fontSize: 18, color: ThemeColors.backgroundWhite),
                        ),
                        Transform.rotate(
                          child: Image.asset(Assets.BACK_ARROW),
                          angle: pi,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
