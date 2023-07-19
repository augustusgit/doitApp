import 'package:doit/screens/create_project.dart';
import 'package:doit/screens/profile.dart';
import 'package:doit/screens/project_list.dart';
import 'package:doit/util/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';
import '../util/widgets/doitwidgets.dart';
import 'dashboard.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  var isSelected = 1;
  List<Widget> fragments = [];

  @override
  void initState() {
    fragments = const [DashboardScreen(), ProjectList(), ProfileScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Widget tabItem(int pos, String icon,String iconSelected) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = pos;
          });
        },
        child: Container(
          width: 45,
          height: 45,
          alignment: Alignment.center,
          // decoration: isSelected == pos ? const BoxDecoration(shape: BoxShape.circle, color: appColorAccent) : const BoxDecoration(),
          child: SvgPicture.asset(
            isSelected == pos ? iconSelected : icon,
            width: 20,
            height: 20,
            theme: SvgTheme(currentColor: isSelected == pos ? appColorPrimary : appWhite,),
            // color: isSelected == pos ? appColorPrimary : Theme.of(context).canvasColor,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: doItAppBar(context, "Do It", showAction: isSelected == 1 ? false : true, showCreateProject: isSelected == 2 ? true : false, showBack: isSelected == 1 ? false : true,),
        body: fragments[isSelected - 1],
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 45),
            height: 60,
            decoration: const BoxDecoration(
              color: bottomBarColor,
              boxShadow: [
                BoxShadow(color: appTextColorSecondary, blurRadius: 5, spreadRadius: 1, offset: Offset(0, 3.0)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tabItem(1, "assets/svg/di_home.svg", "assets/svg/do_home.svg"),
                  tabItem(2, "assets/svg/di_checkmark.svg", "assets/svg/do_checkmark.svg"),
                  tabItem(3, "assets/svg/do_user.svg", "assets/svg/di_user.svg"),
                ],
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: appColorPrimary,
            onPressed: () {
              nextScreen(context, const CreateProject());
            },
            child: const Icon(Icons.add, color: appWhite),
          )
        ],
      ),
    );
  }
}
