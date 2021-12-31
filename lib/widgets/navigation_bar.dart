import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learn_to_earn/constants/colors.dart';
import 'package:learn_to_earn/constants/fonts.dart';
import 'package:learn_to_earn/screens/blogs_screen/blogs_screen.dart';
import 'package:learn_to_earn/screens/messages_screen/messages_screen.dart';
import 'package:learn_to_earn/screens/profile_screen/profile_screen.dart';
import 'package:learn_to_earn/screens/tips_screen/tips_screen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  PageController navPageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      extendBody: true,
      body: PageView.builder(
        itemCount: 4,
        onPageChanged: (pageIndex) {
          setState(() {
            _selectedIndex = pageIndex;
          });
        },
        controller: navPageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return index == 3
              ? const ProfileScreen()
              : index == 2
                  ? const MessagesScreen()
                  : index == 1
                      ? const BlogsScreen()
                      : const TipsScreen();
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(100)),
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
            // navPageController.jumpToPage(index);
            navPageController.animateToPage(index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          },
          tabBackgroundGradient: LinearGradient(colors: [darkPurple, purple]),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          tabs: [
            GButton(
              icon: EvaIcons.giftOutline,
              text: 'Tips',
              gap: 10,
              textStyle: boldFont.copyWith(fontSize: 16, color: white),
              iconActiveColor: white,
              iconColor: darkPurple,
            ),
            GButton(
              icon: EvaIcons.bookOpenOutline,
              text: 'Tips',
              gap: 10,
              textStyle: boldFont.copyWith(fontSize: 16, color: white),
              iconActiveColor: white,
              iconColor: darkPurple,
            ),
            GButton(
              icon: EvaIcons.messageCircleOutline,
              text: 'Message',
              gap: 10,
              textStyle: boldFont.copyWith(fontSize: 16, color: white),
              iconActiveColor: white,
              iconColor: darkPurple,
            ),
            GButton(
              icon: EvaIcons.personOutline,
              text: 'Profile',
              gap: 10,
              textStyle: boldFont.copyWith(fontSize: 16, color: white),
              iconActiveColor: white,
              iconColor: darkPurple,
            ),
          ],
        ),
      ),
    );
  }
}
