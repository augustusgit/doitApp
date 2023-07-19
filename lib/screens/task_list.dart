import 'package:doit/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/next_screen.dart';
import '../util/widgets/doitwidgets.dart';
import 'edit_task.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  var isSelected = 2;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
      appBar: doItAppBar(context, "Do It", showAction: false, showBack: true),
      bottomNavigationBar: Container(
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
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.07, right: screenWidth * 0.07),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    boldText(context, "Add task"),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),

                GestureDetector(
                  onTap: (){nextScreen(context, const EditTask());},
                  child: Container(
                    width: screenWidth * 0.86,
                    height: screenHeight * 0.24,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset.zero,
                        ),
                      ],
                      color: appWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Liberty Pay Loan App",
                                style: GoogleFonts.poppins(
                                  color: appTextColorPrimary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenHeight * .025,
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.08,
                                height: screenHeight * 0.03,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                      offset: Offset.zero,
                                    ),
                                  ],
                                  color: doItPurple,
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4d",
                                      style: GoogleFonts.poppins(
                                        fontSize: screenHeight * .015,
                                        color: appWhite,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            children: [
                              smallText(context, "Team members"),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          "assets/avatar/avatar.png",
                                          fit: BoxFit.cover,
                                          height: screenHeight * .04,),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          "assets/avatar/avatar2.png",
                                          fit: BoxFit.cover,
                                          height: screenHeight * .04,),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          "assets/avatar/avatar3.png",
                                          fit: BoxFit.cover,
                                          height: screenHeight * .04,),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.03,
                                  ),
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            "assets/icon/elisered.png",
                                            height: screenHeight * .04,
                                          ),
                                          Positioned(
                                            left: 5,
                                            right: 5,
                                            top: 5,
                                            bottom: 5,
                                            child: Image.asset(
                                              "assets/icon/calender.png",
                                              height: screenHeight * .04,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Start",
                                            style: GoogleFonts.poppins(
                                              fontSize: screenHeight * .012,
                                              color: appLightRed,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          smallText(context, "27-3-2022"),
                                        ],
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.025,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "End",
                                            style: GoogleFonts.poppins(
                                              fontSize: screenHeight * .012,
                                              color: appColorPrimary,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          smallText(context, "27-3-2022"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  const CircularProgressIndicator(
                                    value: 0.4,
                                    color: Color(0xffd6efc7),
                                    valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                  ),
                                  Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 10,
                                    bottom: 5,
                                    child: Text(
                                      "40\%",
                                      style: GoogleFonts.roboto(
                                        color: appLight_parrot_green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenHeight * .02,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                Container(
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset.zero,
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liberty Pay Loan App",
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: screenHeight * .025,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.08,
                              height: screenHeight * 0.03,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: doItPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4d",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeight * .015,
                                      color: appWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            smallText(context, "Team members"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar3.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/icon/elisered.png",
                                          height: screenHeight * .04,
                                        ),
                                        Positioned(
                                          left: 5,
                                          right: 5,
                                          top: 5,
                                          bottom: 5,
                                          child: Image.asset(
                                            "assets/icon/calender.png",
                                            height: screenHeight * .04,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appLightRed,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.025,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "End",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appColorPrimary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const CircularProgressIndicator(
                                  value: 0.4,
                                  color: Color(0xffd6efc7),
                                  valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                ),
                                Positioned(
                                  left: 5,
                                  right: 5,
                                  top: 10,
                                  bottom: 5,
                                  child: Text(
                                    "40\%",
                                    style: GoogleFonts.roboto(
                                      color: appLight_parrot_green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenHeight * .02,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                Container(
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset.zero,
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liberty Pay Loan App",
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: screenHeight * .025,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.08,
                              height: screenHeight * 0.03,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: doItPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4d",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeight * .015,
                                      color: appWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            smallText(context, "Team members"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar3.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/icon/elisered.png",
                                          height: screenHeight * .04,
                                        ),
                                        Positioned(
                                          left: 5,
                                          right: 5,
                                          top: 5,
                                          bottom: 5,
                                          child: Image.asset(
                                            "assets/icon/calender.png",
                                            height: screenHeight * .04,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appLightRed,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.025,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "End",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appColorPrimary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const CircularProgressIndicator(
                                  value: 0.4,
                                  color: Color(0xffd6efc7),
                                  valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                ),
                                Positioned(
                                  left: 5,
                                  right: 5,
                                  top: 10,
                                  bottom: 5,
                                  child: Text(
                                    "40\%",
                                    style: GoogleFonts.roboto(
                                      color: appLight_parrot_green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenHeight * .02,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                Container(
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset.zero,
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liberty Pay Loan App",
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: screenHeight * .025,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.08,
                              height: screenHeight * 0.03,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: doItPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4d",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeight * .015,
                                      color: appWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            smallText(context, "Team members"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar3.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/icon/elisered.png",
                                          height: screenHeight * .04,
                                        ),
                                        Positioned(
                                          left: 5,
                                          right: 5,
                                          top: 5,
                                          bottom: 5,
                                          child: Image.asset(
                                            "assets/icon/calender.png",
                                            height: screenHeight * .04,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appLightRed,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.025,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "End",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appColorPrimary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const CircularProgressIndicator(
                                  value: 0.4,
                                  color: Color(0xffd6efc7),
                                  valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                ),
                                Positioned(
                                  left: 5,
                                  right: 5,
                                  top: 10,
                                  bottom: 5,
                                  child: Text(
                                    "40\%",
                                    style: GoogleFonts.roboto(
                                      color: appLight_parrot_green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenHeight * .02,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                Container(
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset.zero,
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liberty Pay Loan App",
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: screenHeight * .025,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.08,
                              height: screenHeight * 0.03,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: doItPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4d",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeight * .015,
                                      color: appWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            smallText(context, "Team members"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar3.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/icon/elisered.png",
                                          height: screenHeight * .04,
                                        ),
                                        Positioned(
                                          left: 5,
                                          right: 5,
                                          top: 5,
                                          bottom: 5,
                                          child: Image.asset(
                                            "assets/icon/calender.png",
                                            height: screenHeight * .04,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appLightRed,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.025,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "End",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appColorPrimary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const CircularProgressIndicator(
                                  value: 0.4,
                                  color: Color(0xffd6efc7),
                                  valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                ),
                                Positioned(
                                  left: 5,
                                  right: 5,
                                  top: 10,
                                  bottom: 5,
                                  child: Text(
                                    "40\%",
                                    style: GoogleFonts.roboto(
                                      color: appLight_parrot_green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenHeight * .02,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                Container(
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.24,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset.zero,
                      ),
                    ],
                    color: appWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04, top: screenHeight * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liberty Pay Loan App",
                              style: GoogleFonts.poppins(
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: screenHeight * .025,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.08,
                              height: screenHeight * 0.03,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: doItPurple,
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4d",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeight * .015,
                                      color: appWhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            smallText(context, "Team members"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/avatar/avatar3.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .04,),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          "assets/icon/elisered.png",
                                          height: screenHeight * .04,
                                        ),
                                        Positioned(
                                          left: 5,
                                          right: 5,
                                          top: 5,
                                          bottom: 5,
                                          child: Image.asset(
                                            "assets/icon/calender.png",
                                            height: screenHeight * .04,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appLightRed,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.025,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "End",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenHeight * .012,
                                            color: appColorPrimary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        smallText(context, "27-3-2022"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const CircularProgressIndicator(
                                  value: 0.4,
                                  color: Color(0xffd6efc7),
                                  valueColor: AlwaysStoppedAnimation<Color>(appLight_parrot_green),
                                ),
                                Positioned(
                                  left: 5,
                                  right: 5,
                                  top: 10,
                                  bottom: 5,
                                  child: Text(
                                    "40\%",
                                    style: GoogleFonts.roboto(
                                      color: appLight_parrot_green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenHeight * .02,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
              ],
            ),
          )
      ),
    );
  }
}
