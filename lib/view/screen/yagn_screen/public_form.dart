import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: w * 0.04,
                right: w * 0.04,
                top: h * 0.06,
                bottom: h * 0.015,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      "JAY MAA VISHVAMBHARI",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: w * 0.047,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: w * 0.11,
                      width: w * 0.11,
                      decoration: BoxDecoration(
                        color: const Color(0xff0a2538),
                        borderRadius: BorderRadius.circular(w * 0.03),
                        border: Border.all(
                          color: const Color(0xff536674),
                          width: 0.5,
                        ),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: w * 0.08,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 1.3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff082032), Color(0xff010516)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Column(
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
                                  color: Colors.orange,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "• Types of Navratri Kumbh (Offerings):",
                                          style: TextStyle(
                                            color: Colors.orange,
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
                                            color: Colors.orange,
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
                                            color: Colors.orange,
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
                                            color: Colors.orange,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
