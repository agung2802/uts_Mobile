import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:uts_mobile/views/dashboard_screen.dart';
import 'package:uts_mobile/views/list_kost_screen.dart';
import 'package:uts_mobile/views/profile_screen.dart';

class BottomBarComponent extends StatefulWidget {
  const BottomBarComponent({super.key});

  @override
  State<BottomBarComponent> createState() => _BottomBarComponentState();
}

class _BottomBarComponentState extends State<BottomBarComponent> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.home, color: Color(0xff2c3e50)),
          Icon(Icons.chat, color: Color(0xff2c3e50)),
          Icon(Icons.list, color: Color(0xff2c3e50)),
          Icon(Icons.notifications, color: Color(0xff2c3e50)),
          Icon(Icons.person, color: Color(0xff2c3e50)),
        ],
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.chat, color: Colors.white),
          Icon(Icons.wallet, color: Colors.white),
          Icon(Icons.notifications, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        color: const Color(0xff2c3e50),
        circleColor: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
      ),
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (v) {
            tabIndex = v;
          },
          children: [
            const DashboardScreen(),
            Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green),
            const ListKostScreen(),
            Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.yellow),
            const ProfileScreen(),
          ],
        ),
      ) 
      
    );
  }
}