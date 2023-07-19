import 'package:doit/screens/profile.dart';
import 'package:doit/screens/task_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import '../util/next_screen.dart';
import '../util/widgets/doitwidgets.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  TextEditingController projectNameCont = TextEditingController();
  TextEditingController createdFromCont = TextEditingController();
  TextEditingController endToCont = TextEditingController();
  TextEditingController descCont = TextEditingController();

  var isSelected = 2;

  @override
  void initState() {
    projectNameCont.text = "Liberty Pay";
    createdFromCont.text = "27-3-2022";
    endToCont.text = "27-3-2022";
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
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.6,
                            child: Text(
                              "Task Name",
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: inputBorderColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.6,
                              child: TextFormField(
                                controller: projectNameCont,
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.03,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.39,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.39,
                                child: Text(
                                  "Created (from)",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: inputBorderColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: screenWidth * 0.39,
                              child: TextFormField(
                                controller: createdFromCont,
                                  decoration: InputDecoration(
                                      iconColor: inputBorderColor,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(right: screenWidth * .01),
                                      child: const Icon(Icons.calendar_month,color: inputBorderColor,),
                                    )
                              ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.39,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.39,
                                child: Text(
                                  "End (to)",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenHeight * .015,
                                    color: inputBorderColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.39,
                            child: TextFormField(
                              controller: endToCont,
                              decoration: InputDecoration(
                                iconColor: inputBorderColor,
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: screenWidth * .01),
                                    child: const Icon(Icons.calendar_month, color: inputBorderColor,),
                                  )
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.7,
                            child: Text(
                              "Assign Task:",
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: inputBorderColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: Stack(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  iconColor: inputBorderColor,
                                  suffixIcon: Container(
                                    decoration: BoxDecoration(
                                      // shape: BoxShape.circle,
                                      borderRadius: BorderRadius.circular(30),
                                      color: appColorPrimary,
                                    ),
                                      child: const Icon(Icons.add, color: appWhite,),
                                  ),
                              ),),
                            Padding(
                              padding: EdgeInsets.only(top: screenHeight * 0.01),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/avatar/avatar.png",
                                      fit: BoxFit.cover,
                                      height: screenHeight * .05,),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/avatar/avatar2.png",
                                      fit: BoxFit.cover,
                                      height: screenHeight * .05,),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/avatar/avatar3.png",
                                      fit: BoxFit.cover,
                                      height: screenHeight * .05,),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.7,
                            child: Text(
                              "Tags:",
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: inputBorderColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: Stack(
                          children: [
                            TextFormField(),
                            Padding(
                              padding: EdgeInsets.only(top: screenHeight * 0.01),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        "assets/avatar/union.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .03,),
                                      Padding(
                                        padding: EdgeInsets.only(left: screenWidth * 0.01),
                                        child: smallText(context, "Design"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                        "assets/avatar/union1.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .03,),
                                      Padding(
                                        padding: EdgeInsets.only(left: screenWidth * 0.01),
                                        child: smallText(context, "Front end"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                        "assets/avatar/union2.png",
                                        fit: BoxFit.cover,
                                        height: screenHeight * .03,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: screenWidth * 0.01),
                                        child: smallText(context, "Backend"),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.7,
                            child: Text(
                              "Comment:",
                              style: GoogleFonts.poppins(
                                fontSize: screenHeight * .015,
                                color: inputBorderColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: TextFormField(
                        controller: descCont,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: scaffoldColor,
                          focusColor: inputBorderColor,
                          contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: inputBorderColor, width: 0.5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: iconColorSecondaryDark,
                                  style: BorderStyle.solid,
                                  width: 0)),
                        ),
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.done,
                        autofocus: false,
                        maxLines: null,
                        minLines: 4,
                        textCapitalization: TextCapitalization.sentences,
                        validator: (s) {
                          if (s!.isEmpty) return 'Description is required';
                          return null;
                        },
                        // focusNode: issueNode,
                      ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),

                      doItSubmitButton(context, () => nextScreen(context, const TaskList()), "Add Task" ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                    ],
                  ),
                ),


              ],
            ),
          )
      ),
    );
  }
}
