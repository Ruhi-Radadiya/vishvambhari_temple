import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MVTYDhamDetailPage extends StatelessWidget {
  const MVTYDhamDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "On the western coast of India, in south of Gujarat state, to the east of Valsad district there are lust green hill ranges of Sahyadri and on West side howling Arabian Sea. There is green belt of flower saplings and innumerable trees of Mango, Teak, banyan, Kher etc. spreads over the fertile land of valsad. In south of Valsad, ‘Par’ river flows throughout the year, on its coast very beautiful villages are situated. This land is Karmabhoomi (workplace) of Parshuram - one of the ten incarnations of Lord Vishnu. This area possesses incomparable charm of nature's beauty over the year. A wonder and divine Maa Vishvambhari TirthYatra Dham is developed in Rabda town which is located within heart soothing splendour of nature. This world class and stupendous dham is constructed in only 90 days and it is going to become centre of ideological and spiritual revolution for distributing them to entire world in near future. Maa(Mother) Vishvambhari TirthYatra dham is spreading golden light across the world and it works as a lighthouse for those devotees who wants to get rid off from the cycle of birth-death.",
      "Mother ordered to Mahapatra (the founder of this Dham)for construction of world class Vishvambhari Dham and gave the time limit of 90 days for its completion. Shri Mahapatra obeyed Mother's order and started construction with full devotion of his body, mind and wealth. Mahapatra constructed this peaceful and equivalent to paradise dham within 90 days as per mother's instructions and proved his ability to complete any task on time.",
      "This place has sacred Pathshala (seminary) of Maa Vishvambhari which gives feelings of paradise to everyone. It has Himalayas, Govardhan mountain (Gokuldham), hut of Nand Baba and Gaushala - cowshed (Vaikunth dham), Shri Ram kutir (Panchvati).Within the eye-catching nature's beauty and gardens; there are ditto lively replicas of animals like Giraffe, Lion, Elephant, deer, monkeys and birds like peacocks etc., which impressed our hearts. Big green leafy trees, saplings, architectural beauty of different shrines, their spacious symmetrical distribution, sparkling cleanliness never seen in such devotional places, cool breeze flowing from the waters of ‘Par‘ river and above all this, an unique and dreamlike feeling everyone gets on entering this dham make it a very unique place and makes everybody feel like sitting in mother's soothing, soft lap. The more we see this Dham, more we wish to visit it again and its divinity creates infinite desire in everyone to get more and more of such divine experience.",
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
                      "MVTY DHAM",
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
                          "Maa Vishvambhari TirthYatra Dham",
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
