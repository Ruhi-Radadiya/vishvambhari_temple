import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  final List<Map<String, String>> myDownloads = [
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

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: Column(
        children: [
          SizedBox(height: Get.width / 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MY DOWNLOADS",
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
            height: Get.height / 1.25,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff081F32), Color(0xff000516)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.9],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            padding: EdgeInsets.only(top: Get.width / 30),
            child: Center(
              child: myDownloads.isEmpty
                  ? Text(
                      "No Downloads Available",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )
                  : ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: myDownloads.length,
                      itemBuilder: (context, index) {
                        var item = myDownloads[index];
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
                          trailing: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 6,
                                    sigmaY: 6,
                                  ),

                                  child: AlertDialog(
                                    backgroundColor: Color(0xff0A2538),

                                    content: Text(
                                      "are you sure you want to\ndelete this List ?",
                                      textAlign: TextAlign.center,

                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    title: Image.asset(
                                      "assets/Icon/download/Delete Icon.png",
                                      height: Get.width / 3,
                                    ),
                                    actionsAlignment:
                                        MainAxisAlignment.spaceEvenly,

                                    actions: [
                                      Column(
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(
                                                0xff134369,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: Get.width / 12,
                                                vertical: Get.width / 30,
                                              ),
                                            ),
                                            onPressed: () {
                                              myDownloads.removeAt(index);
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Yes, Delete",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: Get.width / 40),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: Get.width / 12,
                                                vertical: Get.width / 30,
                                              ),
                                              foregroundColor: Color(
                                                0xff142e40,
                                              ),
                                              side: BorderSide(
                                                color: Color(0xff536674),
                                                width: 0.5,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Keep, Please",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            icon: Image.asset(
                              "assets/Icon/download/dow_1.png",
                              height: Get.width / 20,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
