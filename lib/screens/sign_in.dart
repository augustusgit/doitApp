import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/next_screen.dart';
import '../util/widgets/doitwidgets.dart';
import 'dashboard.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: doItAppBar(context, "Do It", showLogo: false,),
        body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.07, right: screenWidth * 0.07),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      doItLogo(context),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boldText(context, "Welcome Back !"),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  buildTextField(
                    context,
                    emailCont,
                    "Email",
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  buildPasswordTextField(
                    context,
                    passwordCont,
                    "Password",
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * .015,
                          color: appTextColorPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      doItSignInSubmitButton(context, () => nextScreen(context, const DashboardScreen()), "Create account" ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/icon/container.png",
                            height: screenHeight * .08,
                          ),
                          Positioned(
                            left: 5,
                            right: 5,
                            top: 5,
                            bottom: 5,
                            child: Image.asset(
                              "assets/icon/thumb.png",
                              height: screenHeight * .05,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * .015,
                          color: appTextColorPrimary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          " Create Account",
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
        ),
    );
  }
}
