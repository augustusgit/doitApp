import 'package:doit/screens/create_account.dart';
import 'package:doit/util/widgets/doitwidgets.dart';
import 'package:doit/util/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: doItAppBar(context, "Do It", showLogo: false, showBack: false),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  doItLogo(context),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/checkmark.png",
                    height: screenHeight * .09,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.08),
                    child: Image.asset(
                      "assets/icon/server.png",
                      height: screenHeight * .09,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.08),
                    child: Image.asset(
                      "assets/icon/calendar.png",
                      height: screenHeight * .09,
                    ),
                  ),



                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/workstation.png",
                    height: screenHeight * .25,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/justdoit.png",
                    height: screenHeight * .02,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              doItSubmitButton(context, () => nextScreen(context, const CreateAccountScreen()), "Create account" ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * .015,
                      color: appTextColorPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Sign in",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * .015,
                        color: appColorPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

  void submitIt(BuildContext context){
    nextScreen(context, CreateAccountScreen());
  }
}