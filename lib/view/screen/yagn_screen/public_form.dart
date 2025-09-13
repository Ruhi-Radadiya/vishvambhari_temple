import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicForm extends StatefulWidget {
  const PublicForm({super.key});

  @override
  State<PublicForm> createState() => _PublicFormState();
}

class _PublicFormState extends State<PublicForm> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "You can now register for Chaitra Navratri 2026. Please read the information below carefully before proceeding.",
      "Chaitra (Spring) Navratri is an ancient and sacred Vedic ritual. In this practice, sacred rituals, prayers, mantras, and devotional offerings are performed, which represent renunciation of negativity and invocation of divine energy. Through Navratri, the environment becomes pure, the mind attains peace, and it brings spiritual strength, personal growth, and collective progress.",
    ];
    return Scaffold(
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
                  "JAY MAA VISHVAMBHARI",
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
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: Get.width / 30,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: points.map((point) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 3.0,
                              horizontal: 9,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "• ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    point,
                                    style: const TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
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
                                    "Event Duration: 9 Days",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "( March 19, 2026 to March 27, 2026 )",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0, -70),
                            child: Container(
                              height: h * 0.84,
                              decoration: BoxDecoration(
                                color: Color(0xff01122a),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "• Types of Navratri Kumbh (Offerings):",
                                      style: TextStyle(
                                        color: Color(0xffFF8127),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      "- ✨ General Kumbh – For health, peace, and overall well-being.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      "- ✨Special Kumbh – For deep spiritual inspiration, personal and societal harmony, and fulfillment of heartfelt wishes.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.025),
                                    Text(
                                      "• Participant Options:",
                                      style: TextStyle(
                                        color: Color(0xffFF8127),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      "- You can individually, with your family, or on behalf of someone else participate in the Kumbh ritual.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.025),
                                    Text(
                                      "• Who Should Join the Ritual?",
                                      style: TextStyle(
                                        color: Color(0xffFF8127),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      "- If you wish to purify your home, body, and mind, and want to bring spiritual balance to your life and environment along with your loved ones, you should join this sacred ritual.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.025),
                                    Text(
                                      "• Special Note:",
                                      style: TextStyle(
                                        color: Color(0xffFF8127),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      "- Only those who are spiritually inclined and willing to follow Vedic procedures should participate. This will ensure environmental purity and overall well-being for everyone.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.025),
                                    Text(
                                      "- General Kumbh is limited to a certain number of participants. Register soon to reserve your spot.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.025),
                                    SizedBox(
                                      width: w * 0.9,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xff134369,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: h * 0.02,
                                          ),
                                          shape: const StadiumBorder(),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Next",
                                          style: GoogleFonts.poppins(
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
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
