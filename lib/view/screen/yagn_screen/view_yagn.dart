import 'dart:developer';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vishvambhari_temple/view/components/textfield.dart';
import 'package:vishvambhari_temple/view/screen/yagn_screen/kund_selection.dart';

class ViewYagn extends StatefulWidget {
  const ViewYagn({super.key});

  @override
  State<ViewYagn> createState() => _ViewYagnState();
}

class _ViewYagnState extends State<ViewYagn> {
  String? selectedCity;
  List<Map<String, String>> familyMembers = [];
  final TextEditingController controller = TextEditingController();
  int? selectedYagnType;
  String? selectedParticipation;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff020C15),
        body: Column(
          children: [
            SizedBox(height: Get.width / 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(Get.width / 45),
                        decoration: BoxDecoration(
                          color: Color(0xff0A2538),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xff536674)),
                        ),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: Get.width / 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width / 18),
                  Text(
                    "YAGN Registration",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: w * 0.047,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.width / 22),
            Container(
              height: Get.height / 1.152,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff081F32), Color(0xff000516)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.9],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              padding: EdgeInsets.only(top: Get.width / 30),
              child: Padding(
                padding: EdgeInsets.all(Get.width / 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  Enter Mobile Number to Auto-Fill  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: Get.width / 20),
                      CommonTextField(
                        hint: "Enter mobile no. to auto-fill details",
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: Get.width / 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 19,
                                backgroundColor: Color(0xffFF8127),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "Date &\nTime",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2), // border ni width
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff536674), // border color
                                    width: 2, // border width
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Color(0xff0A253C),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2), // border ni width
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff536674), // border color
                                    width: 2, // border width
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Color(0xff0A253C),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "Kund\nSelection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.02),
                      Column(
                        children: [
                          Container(
                            height: h * 0.15,
                            decoration: BoxDecoration(
                              color: Color(0xffFF8127),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: h * 0.01),
                                  Text(
                                    "Select Your Yagn Details",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0, -80),
                            child: IntrinsicHeight(
                              child: Container(
                                // height: h * 1.9,
                                decoration: BoxDecoration(
                                  color: Color(0xff01122a),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(Get.width / 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Select Yagn Type",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedYagnType = 0;
                                                });
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                width: w * 0.37,
                                                decoration: BoxDecoration(
                                                  color: selectedYagnType == 0
                                                      ? Color(0xffFF8127)
                                                      : Color(
                                                          0xffFF8127,
                                                        ).withAlpha(55),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFF8127),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Maha Yagn",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        selectedYagnType == 0
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: Get.width / 24),
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedYagnType = 1;
                                                });
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                width: w * 0.37,
                                                decoration: BoxDecoration(
                                                  color: selectedYagnType == 1
                                                      ? Color(0xffFF8127)
                                                      : Color(0xff342829),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFF8127),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Normal Yagn",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        selectedYagnType == 1
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Select Participation",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedParticipation =
                                                      "Single";
                                                });
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                width: w * 0.24,
                                                decoration: BoxDecoration(
                                                  color:
                                                      selectedParticipation ==
                                                          "Single"
                                                      ? Color(0xffFF8127)
                                                      : Color(
                                                          0xffFF8127,
                                                        ).withAlpha(55),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFF8127),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Single",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        selectedParticipation ==
                                                            "Single"
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: Get.width / 30),
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedParticipation =
                                                      "Couple";
                                                });
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                width: w * 0.24,
                                                decoration: BoxDecoration(
                                                  color:
                                                      selectedParticipation ==
                                                          "Couple"
                                                      ? Color(0xffFF8127)
                                                      : Color(
                                                          0xffFF8127,
                                                        ).withAlpha(55),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFF8127),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Couple",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        selectedParticipation ==
                                                            "Couple"
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: Get.width / 30),
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedParticipation =
                                                      "Family";
                                                });
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                width: w * 0.24,
                                                decoration: BoxDecoration(
                                                  color:
                                                      selectedParticipation ==
                                                          "Family"
                                                      ? Color(0xffFF8127)
                                                      : Color(
                                                          0xffFF8127,
                                                        ).withAlpha(55),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFF8127),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Family",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        selectedParticipation ==
                                                            "Family"
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Fill Details",
                                        style: TextStyle(
                                          color: Color(0xffFF8127),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "Choose Your Preferred Date",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "dd-mm-yyyy",
                                        keyboardType: TextInputType.datetime,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Location",
                                        style: TextStyle(
                                          color: Color(0xffFF8127),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      Text(
                                        "City ( for all participants )",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "Enter City Name",
                                        keyboardType: TextInputType.name,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        " Participant 1",
                                        style: TextStyle(
                                          color: Color(0xffFF8127),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),

                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "First Name",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "Enter your name",
                                        keyboardType: TextInputType.name,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Mobile Number ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "Enter your mobile number ",
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Gender",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      SelectField(
                                        title: "Select Gender",
                                        options: ["Male", "Female", "Other"],
                                        onSelected: (value) {
                                          print("Selected gender: $value");
                                        },
                                      ),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Upload Your Photo",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      UploadPhotoField(),
                                      SizedBox(height: Get.width / 22),
                                      Text(
                                        "Add Family Member",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            flex: 4,
                                            child: Container(
                                              height: h * 0.06,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFF8127),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Color(0xffFF8127),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  "Add member",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: Get.width / 30),
                                          Flexible(
                                            flex: 6,
                                            child: GestureDetector(
                                              onTap: () {
                                                showAddMemberDialog(
                                                  context,
                                                  controller,
                                                );
                                              },
                                              child: Container(
                                                height: h * 0.06,
                                                decoration: BoxDecoration(
                                                  color: const Color(
                                                    0xff051c37,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    width: 0.5,
                                                    color: Color(0xff536674),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: const Text(
                                                    "Add member by mobile",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: h * 0.02),
                                      Text(
                                        "Participant 1",
                                        style: TextStyle(
                                          color: Color(0xffFF8127),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "First Name",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "Enter your name",
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "Mobile Number ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      CommonTextField(
                                        hint: "Enter your mobile number ",
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "Gender",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      SelectField(
                                        title: "Select Gender",
                                        options: ["Male", "Female", "Other"],
                                        onSelected: (value) {
                                          print("Selected gender: $value");
                                        },
                                      ),
                                      SizedBox(height: Get.width / 30),
                                      Text(
                                        "Upload Your Photo",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      UploadPhotoField(),
                                      SizedBox(height: Get.width / 20),
                                      Align(
                                        alignment:
                                            AlignmentGeometry.bottomRight,
                                        child: Container(
                                          height: h * 0.06,
                                          width: w * 0.28,
                                          decoration: BoxDecoration(
                                            color: Color(0xff2C0E22),
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            border: Border.all(
                                              color: Color(0xffDA0001),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Remove",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.width / 6.5,
                        width: w * 0.9,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff134369),
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            log("-+*+ Next clicked");
                            Get.to(() => const KundSelection());
                          },
                          child: Text(
                            "Proceed to kund Selection",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.width / 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAddMemberDialog(
    BuildContext context,
    TextEditingController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          contentPadding: EdgeInsets.all(Get.width / 15),
          backgroundColor: const Color(0xff01122A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),

          title: const Text(
            "Add Member by Mobile No.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: CommonTextField(
            hint: "Enter mobile number",
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
          ),

          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xff536674),
                      width: 0.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Color(0xff536674),
                        width: 0.5,
                      ),
                    ),
                    backgroundColor: const Color(0xff051C37),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff134369),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                  ),
                  onPressed: () {
                    print("User typed: ${controller.text}");
                    FocusScope.of(context).unfocus();
                    Get.back();
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
