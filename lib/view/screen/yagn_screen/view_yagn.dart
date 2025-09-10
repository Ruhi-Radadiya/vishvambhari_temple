import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishvambhari_temple/view/components/textfield.dart';

import '../../../routes/routes.dart';

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
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xff020C15),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                  top: 45,
                  bottom: 10,
                ),
                child: Center(
                  child: Text(
                    "YAGN Registration",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 2.3,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff071e30), Color(0xff000617)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Mobile Number to Auto-Fill  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      CommonTextField(
                        hint: "Enter mobile no. to auto-fill details",
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 19,
                                backgroundColor: Colors.orange,
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
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 19,
                                backgroundColor: Color(0xff09253b),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 19,
                                backgroundColor: Color(0xff09253b),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "Kund\nSelection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.02),
                      Container(
                        height: h * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: h * 0.02),
                              Text(
                                "Select Your Yagn Details ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 1.9,
                        decoration: BoxDecoration(
                          color: Color(0xff01122a),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Select Yagn Type",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
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
                                            ? Colors.orange
                                            : Colors.orange.withAlpha(55),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Maha Yagn",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: selectedYagnType == 0
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
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
                                            ? Colors.orange
                                            : Colors.orange.withAlpha(55),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Normal Yagn",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,

                                          fontWeight: selectedYagnType == 1
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.02),
                              Text(
                                "Select Participation",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedParticipation = "Single";
                                      });
                                    },
                                    child: Container(
                                      height: h * 0.06,
                                      width: w * 0.24,
                                      decoration: BoxDecoration(
                                        color: selectedParticipation == "Single"
                                            ? Colors.orange
                                            : Colors.orange.withAlpha(55),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Single",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight:
                                              selectedParticipation == "Single"
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedParticipation = "Couple";
                                      });
                                    },
                                    child: Container(
                                      height: h * 0.06,
                                      width: w * 0.24,
                                      decoration: BoxDecoration(
                                        color: selectedParticipation == "Couple"
                                            ? Colors.orange
                                            : Colors.orange.withAlpha(55),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Couple",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight:
                                              selectedParticipation == "Couple"
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedParticipation = "Family";
                                      });
                                    },
                                    child: Container(
                                      height: h * 0.06,
                                      width: w * 0.24,
                                      decoration: BoxDecoration(
                                        color: selectedParticipation == "Family"
                                            ? Colors.orange
                                            : Colors.orange.withAlpha(55),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Family",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight:
                                              selectedParticipation == "Family"
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.02),
                              Text(
                                "Fill Details",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "Choose Your Preferred Date",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "dd-mm-yyyy",
                                keyboardType: TextInputType.datetime,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.02),
                              Text(
                                "Location",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "City ( for all participants )",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "Enter City Name",
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.02),
                              Text(
                                " Participant 1",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "First Name",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "Enter your name",
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "Mobile Number ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "Enter your mobile number ",
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "Gender",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
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
                              SizedBox(height: h * 0.01),
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
                              SizedBox(height: h * 0.02),
                              Text(
                                "Add Family Member",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
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
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: const Text(
                                          "Add member",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.04),
                                  Flexible(
                                    flex: 6,
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              backgroundColor: const Color(
                                                0xff01122a,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              title: const Text(
                                                "Add Member by Mobile No.",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              content: TextField(
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: controller,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      "Enter mobile number",
                                                  hintStyle: const TextStyle(
                                                    color: Colors.white54,
                                                    fontSize: 14,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          30,
                                                        ),
                                                    borderSide:
                                                        const BorderSide(
                                                          color: Colors.white54,
                                                        ),
                                                  ),
                                                  filled: true,
                                                  fillColor: const Color(
                                                    0xff051c37,
                                                  ),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xff051c37),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            30,
                                                          ),
                                                      side: const BorderSide(
                                                        color: Colors.white54,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    FocusScope.of(
                                                      context,
                                                    ).unfocus();
                                                    Get.back();
                                                  },
                                                  child: const Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xff134369),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            30,
                                                          ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                      "User typed: ${controller.text}",
                                                    );
                                                    FocusScope.of(
                                                      context,
                                                    ).unfocus();
                                                    Get.back();
                                                  },
                                                  child: const Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff051c37),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Colors.grey,
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
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "First Name",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "Enter your name",
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "Mobile Number ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: h * 0.01),
                              CommonTextField(
                                hint: "Enter your mobile number ",
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(height: h * 0.01),
                              Text(
                                "Gender",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
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
                              SizedBox(height: h * 0.01),
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
                              SizedBox(height: h * 0.03),
                              Align(
                                alignment: AlignmentGeometry.bottomRight,
                                child: Container(
                                  height: h * 0.06,
                                  width: w * 0.28,
                                  decoration: BoxDecoration(
                                    color: Colors.red.withAlpha(55),
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.red),
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
                              SizedBox(height: h * 0.05),
                              SizedBox(
                                width: w * 0.9,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff134369),
                                    padding: EdgeInsets.symmetric(
                                      vertical: h * 0.02,
                                    ),
                                    shape: const StadiumBorder(),
                                  ),
                                  onPressed: () {
                                    Get.toNamed(Routes.kundSelection);
                                  },
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.045,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
