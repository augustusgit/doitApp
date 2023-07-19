import 'package:doit/screens/create_project.dart';
import 'package:doit/screens/dashboard.dart';
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
      bool showAction = true,
      bool showCreateProject = false,
      bool showPopMenu = false,
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
          nextScreenReplace(context, const DashboardScreen());
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.057, right: screenWidth * 0.07),

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
    actions: !showAction
        ? null
        : [
          if(showCreateProject)
      ...[Padding(
        padding: EdgeInsets.only(
            bottom: screenHeight * .00, right: screenWidth * .08),
        child: GestureDetector(
          onTap: (){nextScreen(context, const CreateProject());},
          child: Container(
            width: screenWidth * 0.3,
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: appColorPrimary,),
              ),
              child: Center(
                child: Text(
                  "Create Project",
                  style: GoogleFonts.poppins(
                    fontSize: screenHeight * .015,
                    color: appColorPrimary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          ),
        ),
      ),],

      if(showPopMenu)
        ...[
          PopupMenuButton(onSelected: (value) {
            // your logic
            // setState(() {
            //   selectedItem = value.toString();
            // });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                value: '10',
                child: Text("10%"),
              ),
              PopupMenuItem(
                value: '20',
                child: Text("20%"),
              ),
              PopupMenuItem(
                value: '30',
                child: Text("30%"),
              ),
              PopupMenuItem(
                value: '40',
                child: Text("40%"),
              ),
              PopupMenuItem(
                value: '50',
                child: Text("50%"),
              ),
              PopupMenuItem(
                value: '60',
                child: Text("60%"),
              ),
              PopupMenuItem(
                value: '70',
                child: Text("70%"),
              ),
              PopupMenuItem(
                value: '80',
                child: Text("80%"),
              ),
              PopupMenuItem(
                value: '90',
                child: Text("90%"),
              ),
              PopupMenuItem(
                value: '100',
                child: Text("100%"),
              ),
            ];
          })
        ],
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