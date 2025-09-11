import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityAdminPayment extends StatefulWidget {
  const CityAdminPayment({super.key});

  @override
  State<CityAdminPayment> createState() => _CityAdminPaymentState();
}

class _CityAdminPaymentState extends State<CityAdminPayment> {
  String _paymentMethod = "online";

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h * 0.06),
            Container(
              height: h * 0.9,
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
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Thank You Container
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.white38),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thank You...",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "You are temporarily allocated to Thu, 19 Mar 2026 for Normal Yagn (Single).\n\nWe will inform you within 2 days with confirmation and further details.",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 16),

                            Row(
                              children: [
                                Text(
                                  "Reference:",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "YAGN-20250903-408033",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Stack(
                        children: [
                          Container(
                            height: h * 0.252,
                            decoration: BoxDecoration(
                              color: Color(0xff134369),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: h * 0.01),
                                  const Text(
                                    "Participant 1 :\nChirag Patel - 7313435945 - Surat - Male",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 68,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: const Color(0xff0a263d),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white38),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Yagn Type :",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Text(
                                        "Normal Yagn",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Selected Kund :",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Text(
                                        "Normal Kund _98",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Price / Person :",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Text(
                                        "₹ 7,000",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Participants :",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Text(
                                        "01",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Colors.white24),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "₹ 7,000",
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                      Stack(
                        children: [
                          Container(
                            height: h * 0.20,
                            decoration: BoxDecoration(
                              color: Color(0xff134369),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: h * 0.01),
                                  const Text(
                                    "Select Payment Method",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 52,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: const Color(0xff0a263d),
                                border: Border.all(color: Colors.white38),
                                borderRadius: BorderRadius.circular(30),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: "online",
                                        groupValue: _paymentMethod,
                                        onChanged: (val) {
                                          setState(() {
                                            _paymentMethod = val!;
                                          });
                                        },
                                        activeColor: Colors.blue,
                                      ),
                                      const Text(
                                        "Pay Online (Razorpay)",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: "cash",
                                        groupValue: _paymentMethod,
                                        onChanged: (val) {
                                          setState(() {
                                            _paymentMethod = val!;
                                          });
                                        },
                                        activeColor: Colors.blue,
                                      ),
                                      const Text(
                                        "Pay Cash",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          // Button tap action
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.width / 30,
                            horizontal: 60,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                            // Full rounded
                            border: Border.all(color: Colors.green, width: 1.5),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Pay Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      InkWell(
                        onTap: () {
                          // Button tap action
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.width / 30,
                            horizontal: 60,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFC107).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40),
                            // Full rounded
                            border: Border.all(
                              color: const Color(0xFFFFC107),
                              width: 1.5,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Pay Later",
                            style: TextStyle(
                              color: const Color(0xFFFFC107),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Stack(
                        children: [
                          Container(
                            height: h * 0.243,
                            decoration: BoxDecoration(
                              color: Color(0xff134369),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: h * 0.01),
                                  const Text(
                                    "Shareable Payment Link",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: const Color(0xff0a263d),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white38),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff134369),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.white38),
                                    ),
                                    padding: EdgeInsets.all(Get.width / 50),
                                    child: const Text(
                                      "https://dhamadmin.cesihpl.com/process_files/yagn_submit.php ref=YAGN-20250904-279141 &token=a3b0cbb67c758544150d8b39a5cc5a8670d16ea07ba35df027360053280e8b99",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  SizedBox(
                                    height: 40,
                                    width: Get.width / 2.3,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(
                                          0xffFF8127,
                                        ).withOpacity(0.2),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xffFF8127),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Open Share Link",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
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
