import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/textfield.dart';

class AddCityAdmin extends StatefulWidget {
  const AddCityAdmin({super.key});

  @override
  State<AddCityAdmin> createState() => _AddCityAdminState();
}

class _AddCityAdminState extends State<AddCityAdmin> {
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

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
                    "Add City Admin",
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
              height: Get.height / 1.142,
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
                padding: EdgeInsets.only(right: Get.width / 100),
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 6,
                  radius: const Radius.circular(10),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(Get.width / 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.width / 50),
                        Text(
                          "+ Add New City Admin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Address Information",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "State",
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
                        SizedBox(height: Get.width / 20),
                        Text(
                          "District",
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
                        SizedBox(height: Get.width / 20),
                        Text(
                          "City/Village",
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
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Select User Data",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Select User Data ",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Full Name",
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
                        SizedBox(height: Get.width / 20),
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
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Mobile No",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        MobileNumberField(),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Gender",
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
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Status",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Status",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter your password",
                          textInputAction: TextInputAction.next,
                          obscureText: obscurePassword,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: Get.width / 60),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscurePassword = !obscurePassword;
                                });
                              },
                              icon: Icon(
                                obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 20),
                        Text(
                          "Confirm Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Enter Confirm Password",
                          textInputAction: TextInputAction.next,
                          obscureText: obscureConfirmPassword,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: Get.width / 60),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureConfirmPassword =
                                      !obscureConfirmPassword;
                                });
                              },
                              icon: Icon(
                                obscureConfirmPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: Get.width / 20),
                        Text(
                          "Accessed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        CommonTextField(
                          hint: "Assign access",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: Get.width / 20),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.width / 30,
                          ),
                          width: Get.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4F00A4),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Add City Admin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.045,
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
