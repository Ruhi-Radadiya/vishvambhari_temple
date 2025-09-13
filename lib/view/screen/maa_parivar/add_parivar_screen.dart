import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/textfield.dart';

class AddParivarScreen extends StatelessWidget {
  const AddParivarScreen({super.key});

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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16,
                top: Get.width / 10,
                bottom: 10,
              ),
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

                  SizedBox(width: w * 0.20),
                  Text(
                    "Add Parivar",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.width / 30),
            Container(
              padding: EdgeInsets.symmetric(vertical: Get.width / 30),
              height: Get.height / 1.135,
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
                padding: EdgeInsets.only(right: Get.width / 100),
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 6,
                  radius: const Radius.circular(10),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create New Parivar",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "Parivar Code",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your parivar code",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 16),
                        Text(
                          "Personal Information",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "Sthapan Date *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "dd-mm-yyyy",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Full Name *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your Full Name",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Gender *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
                          "Mobile No *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        MobileNumberField(),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Personal Email *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your personal email id",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Birth Date",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "dd-mm-yyyy",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "00",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Aadhaar No ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "XXXX XXXX XXXX XXXX",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Upload Photo of Sthapan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        UploadPhotoField(),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Upload Your Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        UploadPhotoField(),
                        SizedBox(height: Get.width / 16),
                        Text(
                          "Address Information",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "State *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Your State Name",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "District *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Your District Name",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "City/Village *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Your City/Village Name",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Temporary Address",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your Temporary Address",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Permanent Address",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your Permanent Address",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 16),
                        Text(
                          "Occupation Information",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "OCP. Position *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Position",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Occupation",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Occupation",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "OCP. Remark",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter OCP. Remarks",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 16),
                        Text(
                          "Additional Information",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "Remark 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Remark 1",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Remark 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Remark 2",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Remark 3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Remark 3",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Remark 4",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Remark 4",
                          maxLines: 4,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 16),
                        Text(
                          "Family Members Details",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: Get.width / 45),
                        Text(
                          "Add family members information. At least one member is required.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.03),
                        Text(
                          "Family Members #1",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Text(
                          "Full Name *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Full Name ",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Birth Date *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "dd-mm-yyyy",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Age *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "00",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Relation *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Relation",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Gender *",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
                          "Occupation",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Occupation",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Position",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Position",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Email Address",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: Get.width / 22),
                        Text(
                          "Upload Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        UploadPhotoField(),
                        SizedBox(height: Get.width / 10),
                        SizedBox(
                          width: w * 0.9,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4F00A4),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_rounded,
                                  size: Get.width / 16,
                                  color: Colors.white,
                                ),
                                SizedBox(width: Get.width / 24),
                                Text(
                                  "Add Another Family Member",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Get.width / 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 20),
                        SizedBox(
                          width: w * 0.9,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff00A424),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Create Parivar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width / 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.05),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
