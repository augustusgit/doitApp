import 'package:doit/screens/landing_page.dart';
import 'package:doit/util/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../theme/colors.dart';
import '../intl_util.dart';
import '../next_screen.dart';
import '../validation/validation_builder.dart';

AppBar doItAppBar(
    BuildContext context,
    String title, {
      List<Widget>? actions,
      bool showBack = true,
      bool isImage = false,
      Color? color,
      Color? iconColor,
      Color? textColor,
      VoidCallback? onClose,
      bool showLogo = true,
    }) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return AppBar(
    toolbarHeight: MediaQuery.of(context).size.height * .0438,
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: showBack
        ? InkWell(
      onTap: () {
        if (Navigator.of(context).canPop()) {
          Navigator.pop(context, true);
          onClose!();
        } else {
          nextScreenReplace(context, const LandingPage());
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.057, right: screenWidth * 0.07),
        // child: Image.asset(
        //   "assets/icon/back.png",
        //   // height: screenHeight * .08,
        // ),
        child: IconButton(
          onPressed: () {
            finish(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: appTextColorPrimary,
          ),
        ),
      ),
    )
        : null,
    actions: !showLogo
        ? null
        : [
      Padding(
        padding: EdgeInsets.only(
            bottom: screenHeight * .00, right: screenWidth * .08),
        child: doItLogo(context),
      )
    ],
    iconTheme: const IconThemeData(color: appColorPrimary),
  );
}

Widget doItLogo(BuildContext context){
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/logo/icon.png",
            height: screenHeight * .03,
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                "assets/logo/doit.png",
                height: screenHeight * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/logo/line.png",
                    height: screenHeight * .01,
                    width: screenWidth * 0.1,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Image.asset(
      //       "assets/logo/line.png",
      //       height: screenHeight * .01,
      //       width: screenWidth * 0.1,
      //     ),
      //   ],
      // ),
    ],
  );
}

Widget doItSubmitButton(BuildContext context, Function()? onTap, String title) {
  final screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.9,
    height: 55.0,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0), backgroundColor: appColorPrimary,
        textStyle: const TextStyle(
          color: Colors.white,
        ), // background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(),
      ),
    ),
  );
}

Widget doItSignInSubmitButton(BuildContext context, Function()? onTap, String title) {
  final screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.65,
    height: 55.0,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0), backgroundColor: appColorPrimary,
        textStyle: const TextStyle(
          color: Colors.white,
        ), // background
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(),
      ),
    ),
  );
}

Text boldText(BuildContext context, String title){
  final screenHeight = MediaQuery.of(context).size.height;
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: appTextColorPrimary,
      fontWeight: FontWeight.w600,
      fontSize: screenHeight * .03,
    ),
  );
}

Text smallText(BuildContext context, String text){
  final screenHeight = MediaQuery.of(context).size.height;
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: screenHeight * .015,
      color: appTextColorPrimary,
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget buildTextField(BuildContext context, TextEditingController controller, String label) => Container(
  constraints: const BoxConstraints(
    maxWidth: 500.0,
  ),
  child: CustomTextField(
    controller: controller,
    labelText: IntlUtil.translate(label),
    onChanged: (_) {},
    validator: ValidationBuilder().isNotBlank().build,
  ),
);

Widget buildPasswordTextField(BuildContext context, TextEditingController controller, String label) => Container(
  constraints: const BoxConstraints(
    maxWidth: 500.0,
  ),
  child: CustomTextField(
    controller: controller,
    labelText: IntlUtil.translate(label),
    obscureText: true,
    validator: ValidationBuilder().isNotBlank().build,
  ),
);


Widget buildMobileTextField(BuildContext context, TextEditingController controller, String label) => Container(
  constraints: const BoxConstraints(
    maxWidth: 500.0,
  ),
  child: CustomTextField(
    controller: controller,
    labelText: IntlUtil.translate(label),
    obscureText: true,
    mobileInput: true,
    validator: ValidationBuilder().isNotBlank().build,
  ),
);