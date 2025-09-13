import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../components/header.dart';
import '../../components/textfield.dart';

class ViewParivarScreen extends StatefulWidget {
  const ViewParivarScreen({super.key});

  @override
  State<ViewParivarScreen> createState() => _ViewParivarScreenState();
}

class _ViewParivarScreenState extends State<ViewParivarScreen> {
  // sample data that matches screenshot
  final List<Map<String, String>> _cards = const [
    {
      "name": "Dipesh Vasoya",
      "code": "parivar0010",
      "phone": "+91 78653 21498",
      "state": "Gujarat",
      "people": "3",
      "district": "Devbhoomi Dwarka",
      "role": "System Administrator",
    },
    {
      "name": "Patrick K. Chamberlain",
      "code": "parivar0006",
      "phone": "+91 98378 45198",
      "state": "Gujarat",
      "people": "01",
      "district": "Junagath",
      "role": "Manager",
    },
    {
      "name": "Sherika J. Torres",
      "code": "parivar0010",
      "phone": "+91 68557 78491",
      "state": "Rajasthan",
      "people": "5",
      "district": "Jaipur",
      "role": "System Administrator",
    },
  ];

  int selectedValue = 10;
  final List<int> items = [5, 10, 20, 50, 100];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xff020C15),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: Get.width / 30),
                height: Get.height / 1.29,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.1, 0.9],
                    colors: [Color(0xff081E31), Color(0xff010617)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical:  Get.width / 30,horizontal: Get.width / 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: w * 0.015),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff00a424),
                                  padding: EdgeInsets.symmetric(
                                    vertical: Get.width / 20,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ), // normal rounded
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Export to Excel",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.038,
                                    // responsive font size
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width / 50),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.015),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff4f00a4),
                                  padding: EdgeInsets.symmetric(
                                    vertical: Get.width / 20,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ), // normal rounded
                                  ),
                                ),
                                onPressed: () => Get.toNamed(Routes.addParivar),
                                child: Text(
                                  "Add New Parivar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.038,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.width / 14),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff000617),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.width / 24,
                              horizontal: Get.width / 30,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                  child: Text(
                                    "View All Parivar",
                                    style: TextStyle(
                                      color: Color(0xffFF8127),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.width / 18),
                                const Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: h * 0.01),
                                CommonTextField(
                                  hint:
                                      "Search by name, mobile, code, state, city...",
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                ),
                                SizedBox(height: Get.width / 16),
                                const Text(
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
                                  options: const ["Male", "Female", "Other"],
                                  onSelected: (value) {
                                    // handle
                                  },
                                ),
                                SizedBox(height: Get.width / 16),
                                const Text(
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
                                SizedBox(height: Get.width / 16),
                                const Text(
                                  "Per Page",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: h * 0.01),
                                CommonTextField(
                                  hint: "Select Page Strength",
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                ),
                                SizedBox(height: Get.width / 12),
                                Center(
                                  child: Container(
                                    width: Get.width,
                                    height: Get.width / 7,

                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                              const Color(0xff134369),
                                            ),
                                        padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                            horizontal: 100.0,
                                            vertical: 16,
                                          ),
                                        ),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Filter",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.width / 50),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: h * 0.02),

                      Text(
                        "Showing ${_cards.length} of ${_cards.length} parivar(s)",
                        style: const TextStyle(
                          color: Color(0xffFF8127),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Get.width / 15,
                              vertical: Get.width / 50,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xff1A2231),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: Get.width / 1.5,
                            child: Row(
                              children: [
                                Text(
                                  "Show ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: Get.width / 40),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Get.width / 30,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff1e293b),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<int>(
                                      value: selectedValue,
                                      dropdownColor: const Color(0xff313846),
                                      // dropdown list color
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff6E737D),
                                        size: Get.width / 20,
                                      ),

                                      style: GoogleFonts.poppins(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value!;
                                        });
                                      },
                                      items: items.map((int item) {
                                        return DropdownMenuItem<int>(
                                          value: item,
                                          child: Text(
                                            item.toString(),
                                            style: GoogleFonts.poppins(),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width / 30),
                                Text(
                                  "Entries",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: _cards
                            .map(
                              (m) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 3.0,
                                ),
                                child: UserCard(
                                  name: m['name']!,
                                  code: m['code']!,
                                  phone: m['phone']!,
                                  state: m['state']!,
                                  district: m['district']!,
                                  role: m['role']!,
                                  peopleCount: m['people']!,
                                ),
                              ),
                            )
                            .toList(),
                      ),

                      const SizedBox(height: 24),
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
}

/// Reusable card that matches screenshot style (colors, sizes, radii exactly tuned)
class UserCard extends StatelessWidget {
  final String name;
  final String code;
  final String phone;
  final String state;
  final String district;
  final String role;
  final String peopleCount;

  const UserCard({
    super.key,
    required this.name,
    required this.code,
    required this.phone,
    required this.state,
    required this.district,
    required this.role,
    required this.peopleCount,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    const cardInner = Color(0xff01122A);
    const phoneBg = Color(0xFF2357A8);
    const stateBg = Color(0xFF2FB45A);
    const peopleBg = Color(0xFF263238);
    const districtBg = Color(0xFFDD8B33);
    const roleBg = Color(0xFFEA6C6C);

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

      margin: EdgeInsets.only(bottom: Get.width / 30),
      child: Container(
        decoration: BoxDecoration(
          color: cardInner,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(Get.width / 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: h * 0.005),
                      Text(
                        "Code : $code",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: w * 0.03,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    _smallIconButton(
                      "assets/images/men.png",
                      const Color(0xff3B69FF),
                      w,
                      h,
                    ),
                    SizedBox(width: w * 0.02),
                    _smallIconButton(
                      "assets/images/women.png",
                      const Color(0xff3B69FF),
                      w,
                      h,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: h * 0.015),
            Wrap(
              spacing: Get.width / 30,
              runSpacing: Get.width / 30,
              children: [
                chip(phone, phoneBg, Colors.white, w, h),
                chip(state, stateBg, Colors.white, w, h),
                chip(
                  "$peopleCount people",
                  peopleBg,
                  Colors.white,
                  w,
                  h,
                  fontSize: 0.03,
                ),
              ],
            ),
            SizedBox(height: Get.width / 24),
            Wrap(
              spacing: Get.width / 30,
              runSpacing: Get.width / 30,
              children: [
                chip(district, districtBg, Colors.white, w, h),
                chip(role, roleBg, Colors.white, w, h),
              ],
            ),
            SizedBox(height: Get.width / 24),
            Wrap(
              spacing: Get.width / 30,
              children: [
                _actionBoxButton(
                  "assets/Icon/Card/card_1.png",
                  Color(0xff01122A),
                  Colors.white,
                  Colors.white,
                  w,
                  h,
                ),
                _actionBoxButton(
                  "assets/Icon/Card/card_2.png",
                  Color(0xff01122A),
                  Color(0xff4188C6),
                  Color(0xff4188C6),
                  w,
                  h,
                ),
                _actionBoxButton(
                  "assets/Icon/Card/card_3.png",
                  Color(0xff01122A),
                  Color(0xffD7504C),
                  Color(0xffD7504C),
                  w,
                  h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget chip(
    String text,
    Color bg,
    Color textColor,
    double w,
    double h, {
    double fontSize = 0.028,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 22,
        vertical: Get.width / 35,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: w * fontSize,
        ),
      ),
    );
  }

  Widget _smallIconButton(String image, Color iconColor, double w, double h) {
    return Container(
      width: w * 0.055,
      height: w * 0.055,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(image),
    );
  }

  Widget _actionBoxButton(
    String icon,
    Color bg,
    Color iconColor,
    Color borderColor,
    double w,
    double h,
  ) {
    return Container(
      width: w * 0.12,
      height: h * 0.045,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      padding: EdgeInsets.all(Get.width / 35),
      child: Image.asset(icon, height: Get.width / 80, color: iconColor),
    );
  }
}
