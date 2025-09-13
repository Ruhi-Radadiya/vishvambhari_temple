import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MaaVishvambhariDetailPage extends StatelessWidget {
  const MaaVishvambhariDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "For briefing Mother VISHVAMBHARI, really entire intellectuality of this world, words of all the languages on this earth and collective emotions of all lives of this world are not enough to brief the Mother VISHVAMBHARI. Even though, one can’t resist singing the laurels of form, quality and deeds of Mother VISHVAMBHARI.",
      "Mother VISHVAMBHARI is the creator of this endless Universe and entire world. Mother created Brahma, Vishnu and Mahesh (three Lords) and she is also the creator of minutest lifes to the gigantic animals; small mote to skyward ranges of Himalayas; small drop of water to seven seas; skies covering little cloud to stars, planets and nebulas. The creation, breeding and destruction of all of them happen with a blink of her eye. By arranging mysterious play of evolution, she has created special niche for humans and given the super most position to human beings in this world. So that he/she can attain the self-emancipation by singing lyrics of her extra-terrestrial power. Mother VISHVAMBHARI is the mother of all Gods and Goddesses. She is omnipresent, almighty and omniscient.",
      "Mother’s existence was always there, even there were no before the presence of Sun and Moon, no gods and demons, no Saints-sages and friars, this world or any other creations. She is present today and will exist even after destruction of the world.",
      "Mother created whole three layers like (1) Upper most Layer:- sky including celestial objects (2) Middle Layer: earth and (3) Lower most:- abyss. For proper managing of the world, she created Brahma, Vishnu and Mahesh (three Lords) on the most auspicious day of Akshaya Tritya (Akhatrij). She created all those lives who are swimming in water (aquatic), roaming on land (terrestrial) and flying in sky (spatial). She entrusted responsibility of their creation to Brahma, their breeding and nourishment to Vishnu and their salvation to Mahesh. Since then, they are controlling this huge system as per the wish and order of Mother. It’s quite natural that the supreme power that created universe is known as MOTHER!!",
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
                  "MAA VISHVAMBHARI",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: w * 0.047,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: Get.width / 22),
          Container(
            padding: EdgeInsets.all(Get.width / 30),
            height: Get.height / 1.144,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.2, 0.9],
                colors: [Color(0xff081E31), Color(0xff010617)],
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
                padding: EdgeInsets.only(
                  left: Get.width / 30,
                  top: Get.width / 30,
                  right: Get.width / 30
                ),
                child: Column(
                  children: [
                    Text(
                      "Main Aims and Objectives of MVTY Dham : ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: points.map((point) {
                        return Row(
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
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
