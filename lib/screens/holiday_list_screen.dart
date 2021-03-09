import 'package:schoolapp/all_imports.dart';

class HolidayListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: ThemeColors.backgroundWhite,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton(
            onPressed: () => Navigator.of(context).pop(),
            backgroundColor: ThemeColors.backgroundWhite,
            elevation: 2,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Notice Board",
          style: MyTextStyles.TITLLE.copyWith(fontSize: 24),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: ListView.builder(
        itemBuilder: (context, index) => HolidayWidget(
          active: false,
        ),
        itemCount: 8,
      ),
    );
  }
}
