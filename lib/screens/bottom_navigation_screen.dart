import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:real_state_ui/screens/first_screen.dart';
import 'package:real_state_ui/screens/second_screen.dart';
import 'package:real_state_ui/screens/third_screen.dart';

import '../tools/colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _buildScreens() {
    return [
      const FirstScreen(),
      const FirstScreen(),
      const SecondScreen(),
      const ThirdScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        inactiveIcon: const Icon(Icons.home_outlined),
        activeColorPrimary: redColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.location_on),
        inactiveIcon: const Icon(Icons.location_on_outlined),
        activeColorPrimary: redColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.calendar_month_rounded),
        inactiveIcon: const Icon(Icons.calendar_month_outlined),
        activeColorPrimary: redColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        inactiveIcon: const Icon(Icons.person_outline_rounded),
        activeColorPrimary: redColor,
        inactiveColorPrimary: greyColor,
      ),
    ];
  }

  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: primaryColor,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15.0),

      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
