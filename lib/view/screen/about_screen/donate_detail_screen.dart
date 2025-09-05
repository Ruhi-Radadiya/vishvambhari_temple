import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonateDetailScreen extends StatelessWidget {
  const DonateDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff020C15),
      body: Column(
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
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(width: w * 0.18),
                const Text(
                  "DONATION",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

          // 🔽 Main Content
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
                      // 📝 Intro Text
                      const Text(
                        "Donations are accepted by Cheque / Cash / RTGS / NEFT / DD in name of MAA VISHVAMBHARI DHAM CHARITABLE TRUST.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 🔹 TRUST DETAILS
                      detailsCard(
                        title: "TRUST Details are given below :",
                        items: [
                          {
                            "label": "Trust Name :",
                            "value": "Maa Vishvambhari Dham Charitable Trust",
                          },
                          {"label": "Trust PAN No :", "value": "AAETM5665L"},
                          {
                            "label": "Trust Address :",
                            "value":
                                "Maa Vishvembhari Tirthdham Dham, At: Redla, Ta. & Dis. – Valsad, Gujarat, India – 396001",
                          },
                        ],
                      ),
                      const SizedBox(height: 20),

                      // 🔹 BANK DETAILS
                      detailsCard(
                        title: "BANK Details are given below :",
                        items: [
                          {
                            "label": "Bank Name :",
                            "value":
                                "HDFC Bank (Tithal Road, At, Valsad (Gujarat – 396001))",
                          },
                          {"label": "Account No :", "value": "5010028806941"},
                          {"label": "IFSC Code :", "value": "HDFC0000181"},
                          {
                            "label": "80G Details :",
                            "value":
                                "Donation exempted under section 80G (5)(vi), Act 1961 Registration no.: AAETM5665L/05-17-103/080G (5)/ Date: 01-09-2017",
                          },
                        ],
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

  // 🔹 Reusable Card Widget
  Widget detailsCard({
    required String title,
    required List<Map<String, String>> items,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff0a2538),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• $title",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e["label"]!,
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    e["value"]!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.4,
                    ),
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
