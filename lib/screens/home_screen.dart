import 'package:schoolapp/all_imports.dart';

class HomeScreen extends StatelessWidget {
  List<int> inttt = [1, 2, 3, 5, 4, 8];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Icon(
                        Icons.calculate,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Monday\n',
                            style: MyTextStyles.SUB_TITLLE.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w200)),
                        TextSpan(
                            text: '25 October',
                            style: MyTextStyles.TITLLE.copyWith(fontSize: 20))
                      ]),
                    ),
                    Spacer(flex: 5),
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserProfileScreen(),
                      )),
                      child: CircleAvatar(
                        minRadius: 25,
                        backgroundImage: AssetImage(Assets.CHIM),
                      ),
                    )
                  ],
                ),
                HolidayWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Live Updates",
                    style: MyTextStyles.SUB_TITLLE.copyWith(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    liveUpdateWidget(
                        color: ThemeColors.blueGradient4,
                        icon: Icons.calendar_today,
                        text: '90%\n\nAttendance'),
                    liveUpdateWidget(
                        color: ThemeColors.blueGradient2,
                        icon: Icons.note_sharp,
                        text: '90%\n\nAttendance'),
                    liveUpdateWidget(
                        color: ThemeColors.yellow,
                        icon: Icons.note_sharp,
                        text: '90%\n\nAttendance'),
                    SizedBox(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "HomeWork",
                    style: MyTextStyles.SUB_TITLLE.copyWith(fontSize: 18),
                  ),
                ),
                Column(
                  children: inttt
                      .map(
                        (e) => homeWork(
                            homework: "Learn chapter 5 with one eassay\n",
                            subject: "English",
                            time: "Today"),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container liveUpdateWidget({Color color, String text, IconData icon}) {
    return Container(
      height: 90,
      padding: EdgeInsets.all(8),
      // width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: ThemeColors.backgroundWhite,
          ),
          Text(
            text,
            style: MyTextStyles.HOLIDAY_WIDGET_TITLE
                .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  Container homeWork(
      {bool isPending = true, String homework, String time, String subject}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 70,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Row(
        children: [
          Icon(
            Icons.blur_circular_rounded,
            color: Colors.black87,
          ),
          SizedBox(width: 8),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: homework,
                  style: MyTextStyles.TITLLE.copyWith(fontSize: 15)),
              TextSpan(
                  text: subject + " / " + time,
                  style: MyTextStyles.SUB_TITLLE.copyWith(fontSize: 14))
            ]),
          )
        ],
      ),
    );
  }
}
