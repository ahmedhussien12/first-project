import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstProject extends StatefulWidget {
  const FirstProject({super.key});

  @override
  State<FirstProject> createState() {
    print("Hello from createState");
    return _FirstProjectState();
  }
}

class _FirstProjectState extends State<FirstProject> {
  int currentIndex = 0;

  @override
  void initState() {
    print("Hello from initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("hello from build");
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // d lma btzwd 3n 3 items
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (val) {
          print(val);
          currentIndex = val;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/home.svg",
                color: Colors.grey,
              ),
              label: "home",
              activeIcon: SvgPicture.asset(
                "assets/svg/home.svg",
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/feed.svg"), label: "feed"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/feed.svg"), label: "feed"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/feed.svg"), label: "feed"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/search.svg"), label: "search"),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print("close");
    super.dispose();
  }
}
