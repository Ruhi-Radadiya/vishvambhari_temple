import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                  top: 45,
                  bottom: 10,
                ),
                child: Center(
                  child: Text(
                    "Kund Selection",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                height: h * 2.7,
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
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
                        width: w,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xff051c37),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.white54),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "How to Select a Kund",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Step 1: ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Click on available (green) kund positions below",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Step 2: ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Your selection will be confirmed and you can proceed to payment",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.green,
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "Available",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: w * 0.08),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.red,
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "Booked",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.lightbulb_fill,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Selection Rules",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withAlpha(60),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                  child: const Text(
                                    "Single",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Text(
                                    "- Select any 1 position",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withAlpha(60),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                  child: const Text(
                                    "Couple",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Text(
                                    "- Automatically selects 2 consecutive positions in same",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withAlpha(60),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                  child: const Text(
                                    "Family",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Text(
                                    "- Can select any available positions across groups",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Container(
                        height: h * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: h * 0.015),
                              Text(
                                "Select Your Kund",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          // First special Kund (single)
                          KundGroup(groupIndex: 0, startNumber: 1, seats: 6),
                          const SizedBox(height: 30),

                          // From group 1 onward → arrange 2–2 in rows
                          Column(
                            children: List.generate(6, (rowIndex) {
                              // each row has 2 kunds
                              int leftGroup =
                                  rowIndex * 2 + 1; // e.g. 1, 3, 5, ...
                              int rightGroup =
                                  leftGroup + 1; // e.g. 2, 4, 6, ...

                              int leftStart =
                                  7 + (rowIndex * 16); // continues numbering
                              int rightStart = leftStart + 8;

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    KundGroup(
                                      groupIndex: leftGroup,
                                      startNumber: leftStart,
                                      seats: 8,
                                    ),
                                    const SizedBox(width: 30),
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
                        ],
                      ),
                      SizedBox(height: h * 0.03),

                      Text(
                        textAlign: TextAlign.left,
                        "Kund Position Selected !",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      Text(
                        textAlign: TextAlign.left,
                        "Please select Yagn Type to see the total Amount",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: h * 0.02),

                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xff134369),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 63,
                            vertical: 18,
                          ),
                          child: Text(
                            "Submit Registration",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
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
              // grey square
              Container(
                width: 105,
                height: 105,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              // Seats
              ...List.generate(seats, (index) {
                if (groupIndex == 0) {
                  // First Kund: 6 seats (2 each side of square)
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
                  // Other Kunds: 8 seats around square
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
