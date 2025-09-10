import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                child: Row(
                  children: [
                    Container(
                      height: h * 0.05,
                      width: w * 0.12,
                      decoration: const BoxDecoration(
                        color: Color(0xff0a2538),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          weight: 0.2,
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.20),
                    Text(
                      "Add Parivar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.9,
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
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 6,
                  radius: const Radius.circular(10),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create New Parivar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
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
                        CommonTextField(
                          hint: "Enter your parivar code",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: h * 0.02),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.02),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.02),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.02),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.02),
                        Text(
                          "Family Members Details",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        Text(
                          "Add family members information. At least one member is required.",
                          style: TextStyle(
                            color: Colors.white,
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.03),
                        SizedBox(
                          width: w * 0.9, // 90% of screen width
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4f00a4),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(), // pill shape
                            ),
                            onPressed: () {},
                            child: Text(
                              "+ Add Another Family Member",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        SizedBox(
                          width: w * 0.9,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff00a424),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(), // pill shape
                            ),
                            onPressed: () {},
                            child: Text(
                              "Create Parivar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w600,
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
            ],
          ),
        ),
      ),
    );
  }
}
