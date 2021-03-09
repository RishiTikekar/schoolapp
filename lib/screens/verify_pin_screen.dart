import 'package:schoolapp/all_imports.dart';

class VerifyPinScreen extends StatefulWidget {
  @override
  _VerifyPinScreenState createState() => _VerifyPinScreenState();
}

class _VerifyPinScreenState extends State<VerifyPinScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SuccessfullyVerifiedScreen(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            BlueContainer(
              height: 50,
              width: 50,
            ),
            SizedBox(height: 20),
            Text(
              "Verify your number",
              style: MyTextStyles.TITLLE.copyWith(fontSize: 23),
            ),
            SizedBox(height: 8),
            Text(
              "enter the otp sent to +91900515828",
              style: MyTextStyles.SUB_TITLLE
                  .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            PinCodeTextField(
              autoDismissKeyboard: true,
              appContext: context,
              length: 4,
              onChanged: (value) {},
              blinkWhenObscuring: true,
              obscureText: true,
              obscuringCharacter: '*',
              pinTheme: PinTheme(
                  fieldHeight: 60,
                  fieldWidth: 60,
                  borderRadius: BorderRadius.circular(15),
                  inactiveColor: ThemeColors.primaryBlue.withOpacity(0.5),
                  selectedFillColor: ThemeColors.primaryBlue,
                  shape: PinCodeFieldShape.box),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Having trouble? Request a new OTP in",
                      style: MyTextStyles.SUB_TITLLE
                          .copyWith(fontWeight: FontWeight.w300, fontSize: 15)),
                  TextSpan(
                      text: ' 00:30',
                      style: MyTextStyles.SUB_TITLLE
                          .copyWith(fontWeight: FontWeight.w300, fontSize: 15)),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
