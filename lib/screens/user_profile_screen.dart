import 'package:schoolapp/all_imports.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                    Spacer(),
                    Text(
                      "Notice Board",
                      style: MyTextStyles.TITLLE.copyWith(fontSize: 24),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                UserAcountWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "General",
                    style: MyTextStyles.SUB_TITLLE.copyWith(color: Colors.grey),
                  ),
                ),
                generalDataTile(
                    text: "About School",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.person_outline),
                generalDataTile(
                    text: "About #school_app_project",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.warning_amber_outlined),
                generalDataTile(
                    text: "Terms & Conditions",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.warning_amber_outlined),
                generalDataTile(
                    text: "Privacy Policy",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.warning_amber_outlined),
                generalDataTile(
                    text: "Support",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.chat_outlined),
                generalDataTile(
                    text: "Logout",
                    trailingIcon: Icons.chevron_right_outlined,
                    leadingIcon: Icons.login_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column generalDataTile(
      {IconData leadingIcon, IconData trailingIcon, String text}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(leadingIcon, color: Colors.black, size: 32),
          title: Text(
            text,
            style: MyTextStyles.TITLLE.copyWith(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Icon(
            trailingIcon,
            color: Colors.black,
            size: 38,
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
