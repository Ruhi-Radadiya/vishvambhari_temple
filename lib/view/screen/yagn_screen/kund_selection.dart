import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KundSelection extends StatefulWidget {
  const KundSelection({super.key});

  @override
  State<KundSelection> createState() => _KundSelectionState();
}

class _KundSelectionState extends State<KundSelection> {
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
                padding: EdgeInsets.only(
                  left: w * 0.04,
                  right: w * 0.04,
                  top: h * 0.06,
                  bottom: h * 0.01,
                ),
                child: Center(
                  child: Text(
                    "Kund Selection",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: w * 0.045,
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 2.7,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff071e30), Color(0xff000617)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(w * 0.12),
                    topRight: Radius.circular(w * 0.12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(Get.width / 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: w,
                          padding: EdgeInsets.all(w * 0.04),
                          decoration: BoxDecoration(
                            color: const Color(0xff051c37),
                            borderRadius: BorderRadius.circular(w * 0.06),
                            border: Border.all(color: Colors.white24),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "How to Select a Kund",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: w * 0.045,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: h * 0.015),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Step 1: ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: w * 0.035,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Click on available (green) kund positions below",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.035,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.008),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Step 2: ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: w * 0.035,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Your selection will be confirmed and you can proceed to payment",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.035,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: w * 0.06,
                                        // diameter = 2 * radius
                                        height: w * 0.06,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white, // border color
                                            width: 1, // border thickness
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          radius: w * 0.03,
                                          backgroundColor: Colors.green,
                                        ),
                                      ),

                                      SizedBox(width: w * 0.015),
                                      Text(
                                        "Available",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w * 0.045,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      SizedBox(width: w * 0.08),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: w * 0.06,
                                        // diameter = 2 * radius
                                        height: w * 0.06,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white, // border color
                                            width: 1, // border thickness
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          radius: w * 0.03,
                                          backgroundColor: Colors.red,
                                        ),
                                      ),

                                      SizedBox(width: w * 0.015),
                                      Text(
                                        "Booked",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w * 0.045,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.025),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.lightbulb_fill,
                                    color: Colors.orange,
                                    size: w * 0.05,
                                  ),
                                  SizedBox(width: w * 0.015),
                                  Text(
                                    "Selection Rules",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.038,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.015),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: w * 0.03,
                                      vertical: h * 0.005,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withAlpha(60),
                                      borderRadius: BorderRadius.circular(
                                        w * 0.05,
                                      ),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Text(
                                      "Single",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.025),
                                  Expanded(
                                    child: Text(
                                      "- Select any 1 position",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: w * 0.03,
                                      vertical: h * 0.005,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withAlpha(60),
                                      borderRadius: BorderRadius.circular(
                                        w * 0.05,
                                      ),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Text(
                                      "Couple",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.025),
                                  Expanded(
                                    child: Text(
                                      "- Automatically selects 2 consecutive positions in same",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: w * 0.03,
                                      vertical: h * 0.005,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withAlpha(60),
                                      borderRadius: BorderRadius.circular(
                                        w * 0.05,
                                      ),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Text(
                                      "Family",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.025),
                                  Expanded(
                                    child: Text(
                                      "- Can select any available positions across groups",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.032,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                                      "Select Your Kund",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0, -80),
                              child: Container(
                                height: h * 1.9,
                                decoration: BoxDecoration(
                                  color: Color(0xff01122a),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      KundGroup(
                                        groupIndex: 0,
                                        startNumber: 1,
                                        seats: 6,
                                      ),
                                      SizedBox(height: h * 0.02),
                                      Column(
                                        children: List.generate(6, (rowIndex) {
                                          int leftGroup = rowIndex * 2 + 1;
                                          int rightGroup = leftGroup + 1;

                                          int leftStart = 7 + (rowIndex * 16);
                                          int rightStart = leftStart + 8;

                                          return Padding(
                                            padding: EdgeInsets.only(
                                              bottom: h * 0.03,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                KundGroup(
                                                  groupIndex: leftGroup,
                                                  startNumber: leftStart,
                                                  seats: 8,
                                                ),
                                                SizedBox(width: w * 0.04),
                                                KundGroup(
                                                  groupIndex: rightGroup,
                                                  startNumber: rightStart,
                                                  seats: 8,
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                      SizedBox(height: h * 0.03),
                                      Text(
                                        "Kund Position Selected !",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w * 0.035,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.01),
                                      Text(
                                        "Please select Yagn Type to see the total Amount",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w * 0.035,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: h * 0.02),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xff134369,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: w * 0.15,
                                            vertical: h * 0.025,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              w * 0.07,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Submit Registration",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: w * 0.038,
                                          ),
                                        ),
                                      ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KundGroup extends StatelessWidget {
  final int groupIndex;
  final int startNumber;
  final int seats;

  const KundGroup({
    super.key,
    required this.groupIndex,
    required this.startNumber,
    required this.seats,
  });

  @override
  Widget build(BuildContext context) {
    int endNumber = startNumber + seats - 1;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 140,
          height: 140,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 105,
                height: 105,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              ...List.generate(seats, (index) {
                if (groupIndex == 0) {
                  List<Offset> positions = [
                    const Offset(-37, 1), // left-top
                    const Offset(-37, 35), // left-bottom
                    const Offset(74, 1), // right-top
                    const Offset(74, 35), // right-bottom
                    const Offset(1, 75), // bottom-left
                    const Offset(35, 75), // bottom-right
                  ];
                  Offset pos = positions[index];
                  return Positioned(
                    left: 40 + pos.dx,
                    top: 40 + pos.dy,
                    child: seatCircle(startNumber + index),
                  );
                } else {
                  List<Offset> positions = [
                    const Offset(1, -40), // top-left
                    const Offset(35, -40), // top-right
                    const Offset(-37, 1), // left-top
                    const Offset(-37, 35), // left-bottom
                    const Offset(74, 1), // right-top
                    const Offset(74, 35), // right-bottom
                    const Offset(1, 75), // bottom-left
                    const Offset(35, 75), // bottom-right
                  ];
                  Offset pos = positions[index];
                  return Positioned(
                    left: 40 + pos.dx,
                    top: 40 + pos.dy,
                    child: seatCircle(startNumber + index),
                  );
                }
              }),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          groupIndex == 0
              ? "Kund 1–6"
              : "Group $groupIndex\n(Kund $startNumber–$endNumber)",
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }

  Widget seatCircle(int number) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.green,
      child: Text(
        "$number",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
