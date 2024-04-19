import 'package:fazaa/constants.dart';
import 'package:fazaa/pages/drawer_donations_page.dart';
import 'package:fazaa/pages/drawer_reporting_page.dart';
import 'package:fazaa/pages/instructions.dart';
import 'package:fazaa/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
    const NavigationDrawerWidget({super.key});


  String? getCurrentUser () {
     var currentUser = FirebaseAuth.instance.currentUser;
     if(currentUser?.email!= null) {
       String? user = FirebaseAuth.instance.currentUser!.email;
       return user;
     }
     return " ";
   }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kPrimaryColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
               const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  CircleAvatar(
                    radius: 52,
                    backgroundImage: AssetImage(
                      "asset/fazaa_logo/prophile.jpg"
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(//getCurrentUser() ??
                      "ayahamoudeh@gmail.com",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'إدارة الملف الشخصي',
              icon: Icons.edit_note,
              onClicked: () => selectedItem(context, 0),
            ),
            const Divider(
              color: Colors.black54,
              indent: 50,
              endIndent: 50,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'بلاغاتي',
              icon: Icons.report,
              onClicked: () => selectedItem(context, 1),
            ),
            const Divider(
              color: Colors.black54,
              indent: 50,
              endIndent: 50,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'تبرعاتي',
              icon: Icons.handshake,
              onClicked: () => selectedItem(context, 2),
            ),
            const Divider(
              color: Colors.black54,
              indent: 50,
              endIndent: 50,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'الارشادات',
              icon: Icons.integration_instructions,
              onClicked: () => selectedItem(context, 3),
            ),
            const Divider(
              color: Colors.black54,
              indent: 50,
              endIndent: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = kPrimaryColor;
    const hoverColor = Colors.white30;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const RegisterPage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DrawerReportingPage(),
          ),
        );
        break;
      case 2 :
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>  const DrawerDonationsPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Instructions(),
          ),
        );
        break;
    }
  }
}
