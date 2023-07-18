import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/widgets/doitwidgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: doItAppBar(context, "Do It", showLogo: false, showBack: false),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.07, right: screenWidth * 0.07),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      boldText(context, "Hi Dexter"),
                      Image.asset(
                        "assets/icon/notify.png",
                        height: screenHeight * .05,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Welcome onboard',
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * .015,
                          color: appColorPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth * 0.39,
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset.zero,
                            ),
                          ],
                          color: appIconTintDarkCherry,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/icon/elipseorange.png",
                                    height: screenHeight * .045,
                                  ),
                                  Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                    child: Image.asset(
                                      "assets/icon/taskcheck.png",
                                      height: screenHeight * .05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                                left: 15,
                                child: Text(
                                  "Projects",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .02,
                                    color: appTextColorPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                            ),

                            Positioned(
                              top: 15,
                                right: 15,
                                child: boldText(context, "14"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.39,
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset.zero,
                            ),
                          ],
                          color: appLight_yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/icon/eliseblue.png",
                                    height: screenHeight * .045,
                                  ),
                                  Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                    child: Image.asset(
                                      "assets/icon/note.png",
                                      height: screenHeight * .05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                left: 15,
                                child: Text(
                                  "Tasks",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .02,
                                    color: appTextColorPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                            ),

                            Positioned(
                              top: 15,
                              right: 15,
                              child: boldText(context, "24"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth * 0.39,
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset.zero,
                            ),
                          ],
                          color: appDark_parrot_green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/icon/tickcircle.png",
                                    height: screenHeight * .05,
                                  ),
                                  Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                    child: Image.asset(
                                      "assets/icon/tickcircle.png",
                                      height: screenHeight * .05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                left: 15,
                                child: Text(
                                  "Completed Task",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .02,
                                    color: appTextColorPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                            ),

                            Positioned(
                              top: 15,
                              right: 15,
                              child: boldText(context, "12"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.39,
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset.zero,
                            ),
                          ],
                          color: appShadowColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/icon/elisegrey.png",
                                    height: screenHeight * .045,
                                  ),

                                  Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                    child: Image.asset(
                                      "assets/icon/carbon.png",
                                      height: screenHeight * .05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                left: 15,
                                child: Text(
                                  "Tasks",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .02,
                                    color: appTextColorPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                            ),

                            Positioned(
                              top: 15,
                              right: 15,
                              child: boldText(context, "24"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
    );
  }
}
