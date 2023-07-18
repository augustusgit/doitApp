import 'package:doit/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/next_screen.dart';
import '../util/widgets/doitwidgets.dart';

class CreateAccountScreen extends StatefulWidget {
   const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  var nameCont = TextEditingController();
  var emailCont = TextEditingController();
  var mobileCont = TextEditingController();
  var passwordCont = TextEditingController();

  var nameNode = FocusNode();
  var emailNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: doItAppBar(context, "Create Account", showLogo: false,),
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
                    boldText(context, "Create"),
                  ],
                ),
                Row(
                  children: [
                    boldText(context, "Account"),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Row(
                  children: [
                    smallText(context, "Please fill the details below to"),
                  ],
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'create a ',
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: appTextColorPrimary,
                                fontWeight: FontWeight.w400,
                              ),
                          ),
                          TextSpan(
                            text: 'DO-IT ',
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: appColorPrimary,
                                fontWeight: FontWeight.w400,
                              ),
                          ),
                          TextSpan(
                            text: 'account',
                            style: GoogleFonts.poppins(
                              fontSize: screenHeight * .015,
                              color: appTextColorPrimary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: screenHeight * 0.03,
                ),
                buildTextField(
                    context,
                    nameCont,
                    "Name",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                buildTextField(
                  context,
                  emailCont,
                  "Email",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                buildMobileTextField(
                  context,
                  mobileCont,
                  "Mobile Number",
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
                      "Password must be atleast 8 characters",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * .015,
                        color: appTextColorPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),

                doItSubmitButton(context, () => nextScreen(context, const SignInScreen()), "Create account" ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Privacy policy",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * .015,
                        color: appTextColorPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
