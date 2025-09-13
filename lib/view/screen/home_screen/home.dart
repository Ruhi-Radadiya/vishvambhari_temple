import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/drawer.dart';
import '../../components/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTab = 0;
  int selectedAudioTab = 0;
  int activeIndex = 0;
  final List<Map<String, String>> aartiImageList = [
    {
      "thumbnail": "assets/images/home_images/aarti_1.png",
      "duration": "09:17",
      "title": "Aarti",
      "subtitle": " | Maa Vishvambhari TirthYatra Dham",
      "type": "aarti",
    },
    {
      "thumbnail": "assets/images/home_images/aarti_2.png",
      "duration": "17:32",
      "title": "Jyeshtha Purnima",
      "subtitle": " | 2025 | Maa Vishvambhari",
      "type": "aarti",
    },
    {
      "thumbnail": "assets/images/home_images/aarti_3.png",
      "duration": "06:02",
      "title": "કોણ તરે કોણ ડુબે",
      "subtitle": " | Anmol Vichar",
      "type": "aarti",
    },
    {
      "thumbnail": "assets/images/home_images/aarti_4.png",
      "duration": "32:09",
      "title": "આપણે કોના સૈનીક છીએ?",
      "subtitle": " | Anmol Vichar",
      "type": "aarti",
    },
    {
      "thumbnail": "assets/images/home_images/aarti_5.png",
      "duration": "25:12",
      "title": "માઁ વિશ્વંભરીનુ પૃથ્વી ઉપર અવતરણ",
      "subtitle": " | चैत्र नवरात्रि महोत्सव",
      "type": "aarti",
    },
    {
      "thumbnail": "assets/images/home_images/aarti_6.png",
      "duration": "10:32",
      "title": "श्रावण पूर्णिमा",
      "subtitle": " | 2025 | Maa Vishvambhari Tirth Dham",
      "type": "aarti",
    },
  ];
  final List<Map<String, String>> eventList = [
    {
      "title": "Day - 09 || Sanskrutik Ras-Garba",
      "date": "07-04-2025, Monday",
      "image": "assets/images/home_images/event_1.png",
    },
    {
      "title": "Day - 08 || Cultural Program",
      "date": "06-04-2025, Sunday",
      "image": "assets/images/home_images/event_2.png",
    },
  ];
  final List<String> tabs = ["Photos", "Video", "Audio", "Event"];
  final List<String> defaultPageImages = [
    "assets/images/home_images/live_darshan.jpg",
    "assets/images/home_images/offline_darshan.jpg",
  ];

  // final List<Map<String, String>> booksImage = [
  //   {
  //     "image": "assets/images/home_images/book_1.png",
  //     "title": "Vishvambhari Stuti",
  //     "author": "- by Sangita Studio",
  //   },
  //   {
  //     "image": "assets/images/home_images/book_2.png",
  //     "title": "Shree Ambamani Aarti",
  //     "author": "- with vishvambhari Stuti",
  //   },
  //   {
  //     "image": "assets/images/home_images/book_3.png",
  //     "title": "Vishvambhari Stuti",
  //     "author": "- by Sangita Studio",
  //   },
  //   {
  //     "image": "assets/images/home_images/book_4.png",
  //     "title": "Shree Ambamani Aarti",
  //     "author": "- with vishvambhari Stuti",
  //   },
  // ];
  final List<String> defaultPageText = ["LIVE DARSHAN", "OFF-LINE DARSHAN"];
  final List<String> photoText = [
    "Maa Vishvambhari",
    "Shree Mahapatra",
    "Gaushala",
    "Dham Photo",
  ];
  final List<String> photoImages = [
    "assets/images/home_images/maa19_1.png",
    "assets/images/home_images/shree_mahapatra.png",
    "assets/images/home_images/gaushala.png",
    "assets/images/home_images/dham13_1.png",
  ];
  final List<String> mediaImages = [
    "assets/images/home_images/image_1.png",
    "assets/images/home_images/image_2.png",
  ];
  final List<String> mediaText = [
    "CHAITRA NAVRATRI 2025",
    "Teaser | Chaitri Navratri",
  ];
  final List<String> popularImages = [
    "assets/images/home_images/image_3.png",
    "assets/images/home_images/image_4.png",
  ];
  final List<String> popularText = [
    "Aarti | Maa Vishvambhari TirthYatra Dham",
    "Aarti (Gujarati) | Maa Vishvambhari TirthYatra Dham",
  ];
  final List<String> liveImages = [
    "assets/images/home_images/image_5.png",
    "assets/images/home_images/image_6.png",
  ];
  final List<String> liveText = [
    "🔴 LIVE Telecast From:Maa Vishvambhari TirthYatra Dham",
    "🔴 LIVE | सांस्कृतिक रास",
  ];
  final List<String> images = [
    "assets/images/home_images/maa_1.jpg",
    "assets/images/home_images/maa_2.png",    "assets/images/home_images/maa_1.jpg",
    "assets/images/home_images/maa_2.png",    "assets/images/home_images/maa_1.jpg",
    "assets/images/home_images/maa_2.png",
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },

      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xff020C15),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Header(),

            Container(
              padding: EdgeInsets.all(Get.width / 30),
              height: Get.height / 1.29,
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
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          // 📌 Background Image
                          Container(
                            height: h * 0.22,
                            width: Get.width,
                            margin:  EdgeInsets.symmetric(
                              horizontal: Get.width / 80,
                              vertical: Get.width / 80,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // 📌 Gradient Overlay
                          Container(
                            margin:  EdgeInsets.symmetric(
                              horizontal: Get.width / 80,
                              vertical: Get.width / 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.black, Colors.transparent],
                              ),
                            ),
                          ),

                          // 📌 Indicator bottom par overlay
                          Positioned(
                            bottom: 24,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: AnimatedSmoothIndicator(
                                activeIndex: activeIndex,
                                count: images.length,
                                effect: ExpandingDotsEffect(
                                  dotHeight: 8,
                                  dotWidth: 8,
                                  activeDotColor: Color(0xffFF8127),
                                  dotColor: Colors.white54,
                                ),
                              ),
<<<<<<< HEAD
                            ),
=======
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Colors.black, Colors.transparent],
                                  ),
                                ),
                              ),
                            ],
>>>>>>> 2e8dc3532c920d9d35c2ac4d908102a0916267e2
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.width / 1.8,
                      autoPlay: true,
                      viewportFraction: 1,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() => activeIndex = index);
                      },
<<<<<<< HEAD
                    ),
                  ),
                  SizedBox(
                    height: Get.width / 8.5,

                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      itemBuilder: (context, index) {
                        final mappedIndex = index;
                        final isSelected = selectedTab == mappedIndex;
                        return GestureDetector(
                          onTap: () =>
                              setState(() => selectedTab = mappedIndex),
                          child: Padding(
                            padding: EdgeInsets.only(right: Get.width / 60),
=======
                      options: CarouselOptions(
                        height: h * 0.22,
                        autoPlay: true,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() => activeIndex = index);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tabs.length,
                        itemBuilder: (context, index) {
                          final mappedIndex = index + 1;
                          final isSelected = selectedTab == mappedIndex;
                          return GestureDetector(
                            onTap: () =>
                                setState(() => selectedTab = mappedIndex),
>>>>>>> 2e8dc3532c920d9d35c2ac4d908102a0916267e2
                            child: Container(
                              height: Get.width / 12,
                              width: Get.width / 4.6,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xff134369)
                                    : const Color(0xff0A2538),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: Get.width / 30),
                  Expanded(child: getTabContent(h, w, selectedTab)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTabContent(double h, double w, index) {
    switch (selectedTab) {
      // case 1:
      //   return SingleChildScrollView(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SizedBox(height: Get.width / 80),
      //         Container(
      //           height: Get.width / 2.5,
      //           width: Get.width,
      //           child: Stack(
      //             children: [
      //               Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: const BorderRadius.all(
      //                     Radius.circular(16),
      //                   ),
      //                   image: const DecorationImage(
      //                     image: AssetImage(
      //                       "assets/images/home_images/maa2.jpg",
      //                     ),
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(16),
      //                   gradient: const LinearGradient(
      //                     begin: Alignment.bottomCenter,
      //                     end: Alignment.topCenter,
      //                     colors: [Colors.black38, Colors.transparent],
      //                   ),
      //                 ),
      //               ),
      //
      //               Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: const BorderRadius.all(
      //                     Radius.circular(30),
      //                   ),
      //                   gradient: LinearGradient(
      //                     begin: Alignment.centerLeft,
      //                     end: Alignment.centerRight,
      //                     colors: [
      //                       Colors.black.withValues(alpha: 0.5),
      //                       Colors.transparent,
      //                     ],
      //                   ),
      //                 ),
      //                 alignment: Alignment.topLeft,
      //                 child: Padding(
      //                   padding: const EdgeInsets.only(top: 20.0, left: 25),
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         "MAA\nVISHVAMBHARI",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 17,
      //                           fontWeight: FontWeight.w900,
      //                         ),
      //                       ),
      //                       Text(
      //                         "Glimpse Of Mother\nVishvambhari",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 10,
      //                           fontWeight: FontWeight.w400,
      //                         ),
      //                       ),
      //                       Text(
      //                         "•••",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 29,
      //                           fontWeight: FontWeight.w400,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(height: Get.width / 20),
      //         Padding(
      //           padding: EdgeInsets.only(left: 8.0),
      //           child: Text(
      //             "GLIMPSE OF THE DIVINE MOTHER",
      //             style: GoogleFonts.poppins(
      //               fontWeight: FontWeight.w600,
      //               fontSize: 15,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //
      //         const SizedBox(height: 15),
      //         GridView.builder(
      //           padding: const EdgeInsets.symmetric(horizontal: 5),
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             crossAxisSpacing: 13,
      //             mainAxisSpacing: 8,
      //             childAspectRatio: 1.4,
      //           ),
      //           itemCount: defaultPageImages.length,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(16),
      //                 image: DecorationImage(
      //                   image: AssetImage(defaultPageImages[index]),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //               child: Stack(
      //                 children: [
      //                   Container(
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(16),
      //                       gradient: LinearGradient(
      //                         begin: Alignment.bottomCenter,
      //                         end: Alignment.topCenter,
      //                         colors: [
      //                           Colors.black.withValues(alpha: 0.5),
      //                           Colors.transparent,
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   Align(
      //                     alignment: Alignment.bottomCenter,
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Text(
      //                         defaultPageText[index],
      //                         style: const TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.w700,
      //                           fontSize: 13,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   );

      case 0:
        return GridView.builder(
          padding: EdgeInsets.only(top: Get.width / 80),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Get.width / 30,
            mainAxisSpacing: Get.width / 30,
            childAspectRatio: 1.01,
          ),
          itemCount: photoImages.length,
          itemBuilder: (context, index) {
            return Container(
              height: h * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(photoImages[index]),
                  fit: BoxFit.cover,
                ),
              ),

              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [Colors.black38, Colors.transparent],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        photoText[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );

      case 1:
        return ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: Get.width / 30,
                left: Get.width / 200,
                right: Get.width / 200,
              ),
              child: const Text(
                "MEDIA PLAYLIST",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: Get.width / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mediaImages.length,
                itemBuilder: (context, index) => Container(
                  width: Get.width / 1.7,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          mediaImages[index],
                          fit: BoxFit.cover,
                          width: Get.width / 1.7,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            mediaText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(
                bottom: Get.width / 30,
                left: Get.width / 200,
                right: Get.width / 200,
              ),
              child: const Text(
                "POPULAR VIDEO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: Get.width / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularImages.length,
                itemBuilder: (context, index) => Container(
                  width: Get.width / 1.7,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          popularImages[index],
                          fit: BoxFit.fill,
                          width: Get.width / 1.7,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            popularText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(
                bottom: Get.width / 30,
                left: Get.width / 200,
                right: Get.width / 200,
              ),
              child: const Text(
                "🔴 LIVE VIDEO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),

            SizedBox(
              height: Get.width / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: liveImages.length,
                itemBuilder: (context, index) => Container(
                  width: Get.width / 1.7,
                  margin: const EdgeInsets.only(right: 12),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          liveImages[index],
                          fit: BoxFit.fill,
                          width: Get.width / 1.7,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            liveText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );

      case 2:
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAudioTab = 0;
                      });
                    },
                    child: Card(
                      elevation: 2,
                      color: selectedAudioTab == 0
                          ? Colors.white
                          : Color(0xff0A2538).withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: Get.width / 6,
                        decoration: BoxDecoration(
                          color: selectedAudioTab == 0
                              ? Colors.white
                              : Color(0xff0A2538).withOpacity(0.1),
                          border: Border.all(
                            color: selectedAudioTab == 0
                                ? Colors.white
                                : Color(0xff0A2538),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(Get.width / 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/home_images/aarti.png",
                                height: Get.width / 5,
                                width: Get.width / 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Aarti",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: selectedAudioTab == 0
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  "06 Tracks",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAudioTab = 1;
                      });
                    },
                    child: Card(
                      elevation: 2,
                      color: selectedAudioTab == 1
                          ? Colors.white
                          : Color(0xff0A2538).withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: Get.width / 6,
                        decoration: BoxDecoration(
                          color: selectedAudioTab == 1
                              ? Colors.white
                              : Color(0xff0A2538).withOpacity(0.1),
                          border: Border.all(
                            color: selectedAudioTab == 1
                                ? Colors.white
                                : Color(0xff0A2538),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(Get.width / 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/home_images/satsang.png",
                                height: Get.width / 5,
                                width: Get.width / 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Satsang",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: selectedAudioTab == 1
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  "00 Tracks",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: selectedAudioTab == 0
                  ? ListView.builder(
                      padding: EdgeInsets.only(
                        top: Get.width / 30,
                        right: 0,
                        left: 0,
                      ),
                      itemCount: aartiImageList.length,
                      itemBuilder: (context, index) {
                        var item = aartiImageList[index];
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: Get.width / 100,
                          ),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  item["thumbnail"]!,
                                  height: 55,
                                  width: 55,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    item["duration"]!,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            item["title"]!,
                            maxLines: 1,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 13,
                            ),
                          ),
                          subtitle: Text(
                            item["subtitle"]!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 22,
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        "No Data Available",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
            ),
          ],
        );

      case 3:
        return eventList.isEmpty
            ? const Center(
                child: Text(
                  "No Events Available",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.only(
                  top: 0,
                  right: Get.width / 80,
                  left: Get.width / 80,
                ),
                itemCount: eventList.length,
                itemBuilder: (context, index) {
                  final event = eventList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xff0A2538),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                event["image"]!,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.5),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width / 20,
                            vertical: Get.width / 40,
                          ),

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    event["title"]!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    event["date"]!,
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.7,
                                      ),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),

                              Container(
                                padding: EdgeInsets.all(Get.width / 45),
                                decoration: BoxDecoration(
                                  color: Color(0xff0A2538),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Color(0xff536674)),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: Get.width / 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );

      // case 5:
      //   return GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 12,
      //       mainAxisSpacing: 12,
      //       childAspectRatio: 0.75,
      //     ),
      //     padding: EdgeInsets.all(0),
      //     itemCount: booksImage.length,
      //     itemBuilder: (context, index) {
      //       final book = booksImage[index];
      //       return Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(16),
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Expanded(
      //               child: ClipRRect(
      //                 borderRadius: const BorderRadius.all(Radius.circular(16)),
      //                 child: Image.asset(
      //                   book["image"]!,
      //                   fit: BoxFit.cover,
      //                   width: double.infinity,
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Column(
      //                 children: [
      //                   Text(
      //                     book["title"]!,
      //                     style: const TextStyle(
      //                       color: Colors.white,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                   const SizedBox(height: 4),
      //                   Text(
      //                     book["author"]!,
      //                     style: TextStyle(
      //                       color: Colors.white.withValues(alpha: 0.7),
      //                       fontSize: 12,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     },
      //   );

      default:
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.width / 80),
              Container(
                height: Get.width / 2.5,
                width: Get.width,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/home_images/maa2.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black38, Colors.transparent],
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.black.withValues(alpha: 0.5),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MAA\nVISHVAMBHARI",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "Glimpse Of Mother\nVishvambhari",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "•••",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.width / 20),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "GLIMPSE OF THE DIVINE MOTHER",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 15),
              GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.4,
                ),
                itemCount: defaultPageImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(defaultPageImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withValues(alpha: 0.5),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              defaultPageText[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
<<<<<<< HEAD
=======
      case 1:
        return GridView.builder(
          padding: const EdgeInsets.only(top: 15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1.01,
          ),
          itemCount: photoImages.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: h * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(photoImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        photoText[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );

      case 2:
        return ListView(
          padding: const EdgeInsets.all(1),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "MEDIA PLAYLIST",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mediaImages.length,
                itemBuilder: (context, index) => Container(
                  width: 210,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          mediaImages[index],
                          fit: BoxFit.fill,
                          width: 210,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            mediaText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "POPULAR VIDEO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularImages.length,
                itemBuilder: (context, index) => Container(
                  width: 210,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          popularImages[index],
                          fit: BoxFit.fill,
                          width: 210,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            popularText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "🔴 LIVE VIDEO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: liveImages.length,
                itemBuilder: (context, index) => Container(
                  width: 210,
                  margin: const EdgeInsets.only(right: 12),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          liveImages[index],
                          fit: BoxFit.fill,
                          width: 210,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            liveText[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );

      case 3:
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAudioTab = 0;
                        });
                      },
                      child: Card(
                        elevation: 2,
                        color: selectedAudioTab == 0
                            ? Colors.white
                            : Color(0xff0A2538).withOpacity(0.1),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: selectedAudioTab == 0
                                ? Colors.white
                                : Color(0xff0A2538).withOpacity(0.1),
                            border: Border.all(
                              color: selectedAudioTab == 0
                                  ? Colors.white
                                  : Color(0xff0A2538),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  "assets/images/home_images/aarti.png",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aarti",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: selectedAudioTab == 0
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Text(
                                    "06 Tracks",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAudioTab = 1;
                        });
                      },
                      child: Card(
                        elevation: 2,
                        color: selectedAudioTab == 1
                            ? Colors.white
                            : Color(0xff0A2538).withOpacity(0.1),

                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: selectedAudioTab == 1
                                ? Colors.white
                                : Color(0xff0A2538).withOpacity(0.1),
                            border: Border.all(
                              color: selectedAudioTab == 1
                                  ? Colors.white
                                  : Color(0xff0A2538),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  "assets/images/home_images/satsang.png",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Satsang",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: selectedAudioTab == 1
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Text(
                                    "00 Tracks",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
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
            Expanded(
              child: selectedAudioTab == 0
                  ? ListView.builder(
                      itemCount: aartiImageList.length,
                      itemBuilder: (context, index) {
                        var item = aartiImageList[index];
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  item["thumbnail"]!,
                                  height: 55,
                                  width: 55,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    item["duration"]!,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            item["title"]!,
                            maxLines: 1,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 13,
                            ),
                          ),
                          subtitle: Text(
                            item["subtitle"]!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        "No Data Available",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
            ),
          ],
        );

      case 4:
        return eventList.isEmpty
            ? const Center(
                child: Text(
                  "No Events Available",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            : ListView.builder(
                itemCount: eventList.length,
                itemBuilder: (context, index) {
                  final event = eventList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF102B40),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                event["image"]!,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.5),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    event["title"]!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    event["date"]!,
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.7,
                                      ),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );

      case 5:
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          padding: EdgeInsets.all(0),
          itemCount: booksImage.length,
          itemBuilder: (context, index) {
            final book = booksImage[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Image.asset(
                        book["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          book["title"]!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          book["author"]!,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );

      default:
        return const SizedBox();
>>>>>>> 2e8dc3532c920d9d35c2ac4d908102a0916267e2
    }
  }
}
