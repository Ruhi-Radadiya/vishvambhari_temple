import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/textfield.dart';

class AddCityAdmin extends StatefulWidget {
  const AddCityAdmin({super.key});

  @override
  State<AddCityAdmin> createState() => _AddCityAdminState();
}

class _AddCityAdminState extends State<AddCityAdmin> {
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
                    SizedBox(width: w * 0.16),
                    Text(
                      "Add City Admin",
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
                          "+ Add New City Admin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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
                          "Mobile No",
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
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.01),
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

                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: h * 0.01),
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
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: h * 0.01),
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
                        SizedBox(height: h * 0.02),
                        SizedBox(
                          width: w * 0.9,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4f00a4),
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Add City Admin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.045,
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
