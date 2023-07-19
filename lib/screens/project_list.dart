import 'package:doit/screens/add_task.dart';
import 'package:doit/util/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/widgets/doitwidgets.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
                  boldText(context, "Project"),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                width: screenWidth * 0.86,
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                GestureDetector(
                  onTap: (){nextScreen(context, AddTask());},
                  child: Container(
                    width: screenWidth * 0.2,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: appColorPrimary,),
                    ),
                    child: Center(
                      child: Text(
                        "Add Task",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * .015,
                          color: appColorPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
                height: screenHeight * 0.16,
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
                              color: appColorPrimary,
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
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appLightRed,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "End",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeight * .015,
                                          color: appColorPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      smallText(context, "27-3-2022"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){nextScreen(context, AddTask());},
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                // borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: appColorPrimary,),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: appColorPrimary,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
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
    );
  }
}
