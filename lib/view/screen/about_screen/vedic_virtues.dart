import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VedicVirtues extends StatelessWidget {
  const VedicVirtues({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "1. Karma of obligation",
      "2. Devotional Karma",
      "3. Karmyogi",
      "4. Reverential",
      "5. Curiosity",
      "6. Trust",
      "7. Sanctity",
      "8. Spirituality",
      "9. Bravery",
      "10. Alacrity",
      "11. Patience",
      "12. Decorum",
      "13. Unity",
      "14. Punctuality",
      "15. Fearlessness",
      "16. Tolerance",
      "17. Greatness",
    ];
    return Scaffold(
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

                  SizedBox(width: w * 0.12),
                  Text(
                    "VEDIC VIRTUES",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.9,
              width: double.infinity,
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
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23.0),
                        child: Text(
                          "17 Vedic Virtues :",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: points.map((point) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 11,
                              ),
                              child: Expanded(
                                child: Text(
                                  point,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
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
