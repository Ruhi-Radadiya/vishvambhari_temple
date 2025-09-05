import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ObjectiveDetailPage extends StatelessWidget {
  const ObjectiveDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "To spread Mother's message, Vedic Ideology, original devotion and to show the path of salvation to humans living in every corners of this world is the main purpose of this Dham. Educate the people to come out from superstition and become faithful by making their homes as temple. With temple in their homes, negative energies are removed, positive energies are established; Hence malady - illness - difficulties are destroyed from their lives and it makes their body, mind, conscience and soul peaceful. Everybody experience heavenly environment in their homes is the integral part of main purpose.",
      "By teaching to follow Vedic way of living life, this dham desires to make excellent peoples from ordinary ones. By this, best culture will be imbibed in families and again the Vedic way of life will evolves.",
      "From this Tirth Yatra Dham people shall learn to develop true understanding, come out from personnel worshipping, start worshipping Shakti and follow the path of truth.",
      "People get real understanding to come out of idleness, laziness and become industrious so that wealth of their good deeds increases, they will take new birth in higher class and in this way their poverty will decreases.",
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
                    "OBJECTIVES OF DHAM",
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23.0),
                        child: Text(
                          "Main Aims and Objectives of MVTY Dham : ",
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
                                vertical: 8.0,
                                horizontal: 11,
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
                                        fontSize: 13,
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
