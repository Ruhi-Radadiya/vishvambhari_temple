import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      "MAA VISHVAMBHARI",
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
                          FocusScope.of(context).unfocus();
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
                padding: EdgeInsets.only(right: Get.width / 100),
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
            ),
          ],
        ),
      ),
    );
  }
}
