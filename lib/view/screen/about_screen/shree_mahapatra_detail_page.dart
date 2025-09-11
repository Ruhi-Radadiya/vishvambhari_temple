import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShreeMahapatraDetailPage extends StatelessWidget {
  const ShreeMahapatraDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final List<String> points = [
      "The founder of the Vishwambhari Tirth Yatra Dham, Shri Vitthalbhai, became a Mahapatra (great devotee) according to the title bestowed upon him by Maa Vishwambhari, the gracious deity. Behind this, there is an inspiring story. His way of living played a major role in this honor. Observing the events of his life from the beginning until now gives a glimpse of his divine personality.",
      "Born in 1969 on Vaishakh Sud Akhatrij, he is the only son of Nagjibhai, a farmer by profession, and Ladubhen, residing in a small village of Gujarat. From a young age, he had a keen curiosity to learn new things. He always had a desire for research and exploration. Consequently, his way of living from childhood was different from others, and his approach toward life was uniquely distinct.",
      "Shri Vitthalbhai, while performing his duties with utmost dedication, also devoted himself to the worship of the Supreme Power. His ultimate goal was to understand who among all the deities is the highest and supreme and to have their divine darshan. The fragrance of his virtuous deeds had already spread across the universe. To such an extent that Maa Vishwambhari herself chose him as the instrument for her descent onto Earth. Initially, Maa tests this exceptional human being with severe and difficult trials. These tests include examinations of financial, social, and physical challenges, as well as trials of anger, patience, tolerance, attachment, illusion, greed, desire, bravery, fearlessness, and character.",
      "Just as gold must pass through many tests before it shines—being heated in fire, hammered, and shaped—only then is its true value realized, Shri Vitthalbhai also underwent countless severe trials in his life. Step by step, he faced numerous struggles, yet he never wavered in his unwavering faith in the Supreme Power. Shri Vitthalbhai’s desire to have the divine darshan was so intense and pure of heart that he successfully overcame 16 extremely difficult and severe tests set by Maa.",
      "Moreover, on 06-09-1999, Maa tested him with the final and ultimate trial of character, a spiritual fire so intense that even sages would falter. Yet, he emerged pure and victorious. Consequently, Maa appeared in her original form on the Panchkarmi Rath, gave him a direct darshan, bestowed upon him the title of “Mahapatra”, and spent 45 minutes conversing with him.",
      "During this time, Maa said to Mahapatra: 'O Mahapatra, you have passed all my tests, which makes me extremely pleased. The merits of your many past lives have accumulated, so I will grant you whatever you desire.'",
      "Shri Mahapatra replied:'O Maa, I am a karma yogi and live by my own efforts. I do not desire any wealth, comfort, or material prosperity. But Maa, meeting you in this lifetime is my greatest fortune. I wish to reside in your divine lap.'",
      "Despite Maa’s insistence, Shri Mahapatra never asked for any personal or family gains, never sought worldly pleasures, and remained untouched by any temptation. His only aspiration expressed to Maa was to become the “best among humans.”",
      "When Shri Mahapatra expressed his desire to learn a way for the welfare of the entire world, Maa conveyed a divine message for all of humanity:'Abandon blind faith and return to your home; make your home a temple, and establish the highest peak of truth, righteousness, and virtuous deeds there.'",
      "To quickly spread Maa’s message to the world and accelerate the work of Vedic culture, Shri Mahapatra, without a moment’s hesitation, selflessly renounced his birthplace, land, and property along with his family. He demonstrated through his life that those who have attained the true path of truth, righteousness, and action do not feel sorrow in giving up worldly wealth, homes, or inherited land.",
      "Following Maa’s command, he resolved to establish a divine Dham in Rabda village of Valsad district. Shri Mahapatra devoted his body, mind, and wealth, initiating the project himself with a pure heart. With complete dedication, he has been advancing Maa’s entrusted work day and night without pause, igniting the light of global and intellectual revolution.",
      "The greatness of Shri Mahapatra lies in the fact that everything he received from Maa—the Vedic philosophy, true devotion, the path to liberation, and more—he never kept limited to himself but selflessly shared with the world. By walking a thorny path, facing countless struggles, overcoming numerous severe trials, and practicing devotion to the Supreme Power for seven lifetimes without any guide or Guru, he reached Maa. Now, by sharing the knowledge of his experience, he shows people a clear, simple, and direct path to attain the Supreme Power.",
      "Just as he had a direct darshan of Maa in the Panchkarmi Rath, he has created a conscious idol and Panchkarmi Rath for the world today, allowing people to have Maa’s darshan. He is guiding people away from blind faith and towards true faith. Shri Mahapatra’s own conduct and way of life serve as a living example and guidance for all. He teaches everyone the understanding of truth, righteousness, and karma, showing how to live life beyond worldly pleasures and sorrows while following the path of truth.",
      "By removing blind faith from everyone’s life and igniting the light of true devotion, he inspires devotees to realize their duties, abandon inaction, and become dedicated to karma and dharma. Shri Mahapatra is always actively striving to lead people toward this ideal.",
      "Even today, he can be seen performing his duties at the Tirth Yatra Dham, practicing devotion through action, and guiding visitors as a karma yogi in the path of truth, righteousness, and karma. In other words, he exemplifies three levels of devotion: performing duty (Kartavya Karma), devotion through action (Karma Bhakti), and union through action (Karma Yoga).",
      "By practicing the seventy-seven Vedic virtues beloved to Maa, he not only lives his life in accordance with them but also teaches others to live similarly. Such a dedicated karma yogi leads a life that serves as an inspiration for every human being in the world.",
      "In today’s times, when millions of people struggle their entire lives to understand the true essence of religion and devotion, Shri Mahapatra, through countless struggles and relentless effort, has created a supreme confluence of truth, dedication, pure devotion, and divine worship. Through this, he has inspired millions of devotees to abandon blind faith, return to their homes, and transform their homes into temples.",
      "As a result, countless people today have made their homes sacred, freeing themselves from physical and mental afflictions, and have begun living their lives according to Maa’s philosophy.",
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
                      "SHREE MAHAPATRA",
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
                            "About the Founder of MVTY Dham – Shri Mahapatra",
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
