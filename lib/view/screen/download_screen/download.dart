import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  ];

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
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16,
                top: 45,
                bottom: 10,
              ),
              child: Center(
                child: Text(
                  "MY DOWNLOADS",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
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
              child: Center(
                child: myDownloads.isEmpty
                    ? Text(
                        "No Downloads Available",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      )
                    : ListView.builder(
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
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Color(0xff0a2538),

                                    content: Text(
                                      "are you sure you want to delete this List ?",
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
                                              "Yes , Delete",
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
                                              side: const BorderSide(
                                                color: Colors.white,
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
                                              "Keep , Please",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
      ),
    );
  }
}
