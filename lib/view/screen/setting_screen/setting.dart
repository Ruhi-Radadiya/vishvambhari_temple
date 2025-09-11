import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificationsEnabled = true;
  String selectedLanguage = "English";
  String appMode = "Dark";

  void _showClearHistoryDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xff071e30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Image.asset(
          "assets/Icon/settingIcon/sett_6.png",
          height: Get.width / 3,
        ),
        content: const Text(
          "Are you sure you want to Clear Search History?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff134369),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 12,
                    vertical: Get.width / 30,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Search history cleared!")),
                  );
                },
                child: Text(
                  "Yes , Clear",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: Get.width / 40),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 12,
                    vertical: Get.width / 30,
                  ),
                  foregroundColor: Color(0xff142e40),
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "No , Please",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff071e30),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateSheet) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "LANGUAGE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "English",
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setStateSheet(() => selectedLanguage = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "ગુજરાતી",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "Gujarati",
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setStateSheet(() => selectedLanguage = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "हिन्दी",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "Hindi",
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setStateSheet(() => selectedLanguage = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showAppModeBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff071e30),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateSheet) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "APP MODE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text(
                      "Light",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "Light",
                      groupValue: appMode,
                      onChanged: (value) {
                        setStateSheet(() => appMode = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Dark",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "Dark",
                      groupValue: appMode,
                      onChanged: (value) {
                        setStateSheet(() => appMode = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Default",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Radio(
                      value: "Default",
                      groupValue: appMode,
                      onChanged: (value) {
                        setStateSheet(() => appMode = value!);
                        setState(() {});
                      },
                      fillColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16,
                top: 45,
                bottom: 10,
              ),
              child: Center(
                child: Text(
                  "SETTINGS",
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
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_1.png",
                    title: "Language",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: _showLanguageBottomSheet,
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/profileIcon/pro_3.png",
                    title: "Clear Search History",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: _showClearHistoryDialog,
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_2.png",
                    title: "Notifications",
                    trailing: Switch(
                      value: notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          notificationsEnabled = value;
                        });
                      },
                      activeThumbColor: const Color(0xff0a2538),
                      activeTrackColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: const Color(0xff0a2538),
                    ),
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_3.png",
                    title: "App Mode",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: _showAppModeBottomSheet,
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_4.png",
                    title: "Privacy Policy",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DummyPage(
                            title: "Privacy Policy",
                            content: "Here is your Privacy Policy details...",
                          ),
                        ),
                      );
                    },
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_5.png",
                    title: "Terms & Conditions",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DummyPage(
                            title: "Terms & Conditions",
                            content:
                                "Here are your Terms & Conditions details...",
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsTile({
    required String image,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 22),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFF0E2A47),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Image.asset(image, height: Get.width / 22),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }
}

/// --- Dummy Page for Privacy Policy & Terms ---
class DummyPage extends StatelessWidget {
  final String title;
  final String content;

  const DummyPage({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020C15),
      appBar: AppBar(
        backgroundColor: const Color(0xff071e30),
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          content,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
