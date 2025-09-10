import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
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

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xff020C15),
        // floatingActionButton: Container(
        //   margin: const EdgeInsets.only(bottom: 8, right: 6),
        //   child: FloatingActionButton(
        //
        //     onPressed: () {},
        //     backgroundColor: const Color(0xffff7b2d),
        //     child: const Icon(
        //       Icons.arrow_upward,
        //       size: 28,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: h * 0.14,
                      width: w * 0.14,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/profile_images/profile.png",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.12),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () => Get.toNamed(Routes.notificationScreen),
                    ),
                  ],
                ),
              ),

              // Main content gradient area
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff071e30), Color(0xff020c1d)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(18),
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
                                      vertical: h * 0.018,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        12,
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
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: w * 0.015),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff4f00a4),
                                    padding: EdgeInsets.symmetric(
                                      vertical: h * 0.018,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      ), // normal rounded
                                    ),
                                  ),
                                  onPressed: () =>
                                      Get.toNamed(Routes.addParivar),
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
                        SizedBox(height: h * 0.03),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff000617),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 14,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Center(
                                    child: Text(
                                      "View All Parivar",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: h * 0.02),
                                  const Text(
                                    "Search",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  CommonTextField(
                                    hint:
                                        "Search by name, mobile, code, state, city...",
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Gender *",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SelectField(
                                    title: "Select Gender",
                                    options: const ["Male", "Female", "Other"],
                                    onSelected: (value) {
                                      // handle
                                    },
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "State",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  CommonTextField(
                                    hint: "Enter Your State Name",
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Per Page",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  CommonTextField(
                                    hint: "Select Page Strength",
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const SizedBox(height: 12),
                                  Center(
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
                                              12,
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
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: h * 0.02),

                        Text(
                          "Showing ${_cards.length} of ${_cards.length} parivar(s)",
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff071e30),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    "Show ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
                                    ),
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<int>(
                                      value: 10,
                                      dropdownColor: const Color(0xff071e30),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 5,
                                          child: Text("5"),
                                        ),
                                        DropdownMenuItem(
                                          value: 10,
                                          child: Text("10"),
                                        ),
                                        DropdownMenuItem(
                                          value: 25,
                                          child: Text("25"),
                                        ),
                                      ],
                                      onChanged: (v) {},
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: h * 0.02),
                                  const Text(
                                    " Entries",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          children: _cards
                              .map(
                                (m) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
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
    const cardBg = Color(0xFF071829);
    const cardInner = Color(0xFF0B2030);
    const phoneBg = Color(0xFF2357A8); // phone blue
    const stateBg = Color(0xFF2FB45A); // green
    const peopleBg = Color(0xFF263238); // grey pill
    const districtBg = Color(0xFFDD8B33); // orange
    const roleBg = Color(0xFFEA6C6C); // red

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: cardInner,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
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
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Code : $code",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  _smallIconButton(Icons.man, const Color(0xFF2B69C8)),
                  const SizedBox(width: 8),
                  _smallIconButton(Icons.woman, const Color(0xFF2B69C8)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              chip(phone, phoneBg, Colors.white),
              const SizedBox(width: 8),
              chip(state, stateBg, Colors.white),
              const Spacer(),
              chip("$peopleCount people", peopleBg, Colors.white, fontSize: 12),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              chip(district, districtBg, Colors.white),
              const SizedBox(width: 8),
              chip(role, roleBg, Colors.white),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _actionBoxButton(
                Icons.remove_red_eye,
                Colors.transparent,
                Colors.white,
                Colors.white,
              ),
              const SizedBox(width: 10),
              _actionBoxButton(
                Icons.edit,
                Colors.transparent,
                Colors.blueAccent,
                Colors.blueAccent,
              ),
              const SizedBox(width: 10),
              _actionBoxButton(
                Icons.delete,
                Colors.transparent,
                Colors.redAccent,
                Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget chip(String text, Color bg, Color textColor, {double fontSize = 11}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
        ),
      ),
    );
  }

  Widget _smallIconButton(IconData icon, Color iconColor) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: iconColor, size: 30),
    );
  }

  Widget _actionBoxButton(
    IconData icon,
    Color bg,
    Color iconColor,
    Color borderColor,
  ) {
    return Container(
      width: 44,
      height: 36,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Icon(icon, color: iconColor, size: 18),
    );
  }
}
