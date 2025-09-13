import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/routes.dart';
import '../../components/textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  File? profileImage;
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController sthapanController = TextEditingController();
  TextEditingController conpasswordController = TextEditingController();
  TextEditingController aadhaarController = TextEditingController();

  final labelStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source, imageQuality: 70);

    if (pickedFile != null) {
      setState(() {
        profileImage = File(pickedFile.path);
      });
    }
  }

  void showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF061C36),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt, color: Colors.white),
                title: const Text(
                  "Take Photo",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              const Divider(color: Colors.white24),
              ListTile(
                leading: const Icon(Icons.photo, color: Colors.white),
                title: const Text(
                  "Choose from Gallery",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              SizedBox(height: 40),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff0A2538),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff081F32), Color(0xff000516)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.9],
          ),

        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.width / 8),
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
              Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Circle for profile / upload
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xff394C5B),
                      child: Icon(
                        Icons.person_rounded,
                        size: Get.width / 10,
                        color: Colors.white54,
                      ),
                    ),
                    // Bottom overlay with camera icon
                    Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: h * 0.005),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter your Personal Information",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
              SizedBox(height: h * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Username", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: nameController,
                hint: "Enter your name...",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Email", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: nameController,
                hint: "Enter your email...",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Mobile No", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff071a31),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xff0ff536674)),
                ),
                padding: EdgeInsets.symmetric(horizontal: Get.width / 22),
                child: Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: "+91",
                        dropdownColor: Color(0xFF2C2C3C),
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        items: <String>["+91", "+1", "+44", "+61"]
                            .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.flag,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      value,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              );
                            })
                            .toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: Get.width / 18,
                      width: 1,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: numberController,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xff536674)),
                          ),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Color(0xff071a31),
                          hintText: "Enter Mobile No.",
                          hintStyle: const TextStyle(
                            color: Colors.white38,
                            fontSize: 14,
                          ),
                          // contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          contentPadding: EdgeInsets.symmetric(
                            // horizontal: Get.width / 22,
                            vertical: Get.width / 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: passwordController,
                hint: "Enter your password...",
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
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Confirm Password", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: conpasswordController,
                hint: "Enter your confirm password...",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.none,
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
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Sthapan Year", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: sthapanController,
                hint: "YYYY",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Aadhaar Number", style: labelStyle),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: aadhaarController,
                hint: "XXXX XXXX XXXX",
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: h * 0.03),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(Get.width / 30),
        color: Color(0xff000617),
        child: SizedBox(
          width: w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff134369),
              padding: const EdgeInsets.symmetric(vertical: 18),
              // Increased vertical padding for button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.splashPage);
            },
            child: const Text(
              "Register",

              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: const Color(0xFF061C36),
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Align(
    //             alignment: Alignment.topLeft,
    //             child: IconButton(
    //               onPressed: () => Navigator.pop(context),
    //               icon: const Icon(Icons.arrow_back, color: Colors.white),
    //             ),
    //           ),
    //
    //           Center(
    //             child: Stack(
    //               alignment: Alignment.bottomCenter,
    //               children: [
    //                 CircleAvatar(
    //                   radius: 60,
    //                   backgroundColor: Colors.white12,
    //                   backgroundImage: profileImage != null
    //                       ? FileImage(profileImage!)
    //                       : null,
    //                   child: profileImage == null
    //                       ? const Icon(
    //                           Icons.person,
    //                           size: 60,
    //                           color: Colors.white54,
    //                         )
    //                       : null,
    //                 ),
    //                 Positioned(
    //                   right: 1,
    //                   bottom: 4,
    //                   child: InkWell(
    //                     onTap: showImagePickerOptions,
    //                     child: Container(
    //                       decoration: const BoxDecoration(
    //                         shape: BoxShape.circle,
    //                         color: Colors.black54,
    //                       ),
    //                       padding: const EdgeInsets.all(6),
    //                       child: const Icon(
    //                         CupertinoIcons.add,
    //                         size: 25,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(height: h * 0.03),
    //           const Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Register",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 28,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.005),
    //           const Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Enter your Personal Information",
    //               style: TextStyle(color: Colors.white70, fontSize: 14),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.03),
    //           Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Username",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.01),
    //           buildTextField("Enter your name", false),
    //           SizedBox(height: h * 0.02),
    //           Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Email",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.01),
    //           buildTextField("Enter your email", false),
    //           SizedBox(height: h * 0.02),
    //           Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Password",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.01),
    //           buildTextField(
    //             "Enter your password",
    //             true,
    //             obscure: obscurePassword,
    //             toggle: () {
    //               setState(() {
    //                 obscurePassword = !obscurePassword;
    //               });
    //             },
    //           ),
    //           SizedBox(height: h * 0.02),
    //           Align(
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               "Confirm Password",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: h * 0.01),
    //           buildTextField(
    //             "Enter Confirm Password",
    //             true,
    //             obscure: obscureConfirmPassword,
    //             toggle: () {
    //               setState(() {
    //                 obscureConfirmPassword = !obscureConfirmPassword;
    //               });
    //             },
    //           ),
    //           SizedBox(height: h * 0.03),
    //           SizedBox(
    //             width: w,
    //             child: ElevatedButton(
    //               style: ElevatedButton.styleFrom(
    //                 backgroundColor: const Color(0xFF0C4473),
    //                 padding: const EdgeInsets.symmetric(vertical: 13),
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(30),
    //                 ),
    //               ),
    //               onPressed: () {},
    //               child: const Text(
    //                 "Register",
    //                 style: TextStyle(fontSize: 16, color: Colors.white),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget buildTextField(
    String hint,
    bool isPassword, {
    bool obscure = false,
    VoidCallback? toggle,
  }) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: toggle,
                icon: Icon(
                  obscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white54,
                ),
              )
            : null,
      ),
    );
  }
}
