import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarshanTimeAndRules extends StatelessWidget {
  const DarshanTimeAndRules({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: Column(
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
                    "DARSHAN TIME & RULES",
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
          Expanded(
            child: Container(
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "DARSHAN TIME :",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 12),

                      bulletPoint(
                        "What is the daily darshan time schedule?",
                        sub: [
                          "Morning: 7:30 AM to 1:00 PM (Everyday)",
                          "Afternoon: 2:30 PM to 8:30 PM (Everyday)",
                        ],
                      ),
                      bulletPoint(
                        "What is the Himalaya darshan closing time?",
                        sub: ["Everyday: 7:00 PM"],
                      ),
                      bulletPoint(
                        "What is the aarti time?",
                        sub: [
                          "Morning: 8:15 AM (Everyday)",
                          "Evening: 7:15 PM (Everyday)",
                        ],
                      ),

                      const SizedBox(height: 20),
                      const Text(
                        "DARSHAN RULES :",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                      rulePoint(
                        "Following the new rules for Darshan at the Temple is mandatory",
                      ),
                      rulePoint(
                        "Women should come fully dressed (in saree or full attire) for Darshan.",
                      ),
                      rulePoint(
                        "All visitors should come in proper, respectful attire and maintain decorum.",
                      ),
                      rulePoint(
                        "Maintain peace and cleanliness in the premises and cooperate with the volunteers.",
                      ),
                      rulePoint(
                        "Bringing pets or animals into the premises is strictly prohibited.",
                      ),
                      rulePoint(
                        "Outside food or cooking is not allowed within the premises.",
                      ),
                      rulePoint(
                        "Items like tobacco, gutkha, and alcohol are strictly prohibited inside the premises.",
                      ),
                      rulePoint(
                        "Mobile phones, cameras, and loud talking are discouraged during the Trivrutra.",
                      ),
                      rulePoint(
                        "Climbing trees, plucking flowers/fruits, or damaging plants is strictly prohibited.",
                      ),
                      rulePoint(
                        "Vehicles, sound systems, and any other disruptive equipment are not allowed without permission.",
                      ),
                      rulePoint(
                        "For Darshan and Seva-related queries or help, please contact the office.",
                      ),

                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.red.shade700,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "• VIOLATION OF THE ABOVE RULES MAY RESULT IN LEGAL ACTION.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Reusable Bullet Point for Darshan Time
  Widget bulletPoint(String title, {List<String>? sub}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "• ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
          if (sub != null)
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: sub
                    .map(
                      (s) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          "– $s",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  // 🔹 Reusable Rule Bullet Point
  Widget rulePoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(color: Colors.white, fontSize: 18)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
