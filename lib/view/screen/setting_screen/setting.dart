import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificationsEnabled = true;
  String selectedLanguage = "English";
  String appMode = "Dark";

  void showClearHistoryDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          backgroundColor: const Color(0xff071e30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff134369),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Search history cleared!"),
                        ),
                      );
                    },
                    child: const Text(
                      "Yes, Clear",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xff536674),
                        width: 0.5,
                      ),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: const Color(0xff142E40),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "No, Please",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xff0C2E49)),
            child: StatefulBuilder(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "LANGUAGE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      buildLanguageToggle("English", setStateSheet),
                      const Divider(color: Color(0xff536674)),
                      buildLanguageToggle("Gujarati", setStateSheet),
                      const Divider(color: Color(0xff536674)),
                      buildLanguageToggle("Hindi", setStateSheet),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget buildLanguageToggle(String language, StateSetter setStateSheet) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      title: Text(
        language == "Gujarati"
            ? "ગુજરાતી"
            : language == "Hindi"
            ? "हिन्दी"
            : "English",
        style: const TextStyle(color: Colors.white),
      ),
      trailing: Transform.scale(
        scale: 0.7, // Shrinks the switch to 70% of default size
        child: Switch(
          value: selectedLanguage == language,
          onChanged: (value) {
            if (value) {
              setStateSheet(() => selectedLanguage = language);
              setState(() {}); // update main state
            }
          },
          activeThumbColor: const Color(0xff0A2538),
          activeTrackColor: Colors.white,
          inactiveThumbColor: const Color(0xff113D60),
          inactiveTrackColor: const Color(0xff0A2538),
        ),
      ),
    );
  }

  void showAppModeBottomSheet() {
    showModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          decoration: const BoxDecoration(color: Color(0xff0C2E49)),
          child: StatefulBuilder(
            builder: (context, setStateSheet) => Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "APP MODE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  buildAppModeToggle("Light", setStateSheet),
                  const Divider(color: Color(0xff536674)),
                  buildAppModeToggle("Dark", setStateSheet),
                  const Divider(color: Color(0xff536674)),
                  buildAppModeToggle("Default", setStateSheet),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAppModeToggle(String mode, StateSetter setStateSheet) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      title: Text(mode, style: const TextStyle(color: Colors.white)),
      trailing: Transform.scale(
        scale: 0.7, // Shrinks the switch to 70% of default size
        child: Switch(
          value: appMode == mode,
          onChanged: (value) {
            if (value) {
              setStateSheet(() => appMode = mode);
              setState(() {}); // update main state
            }
          },
          activeThumbColor: const Color(0xff0A2538),
          activeTrackColor: Colors.white,
          inactiveThumbColor: const Color(0xff113D60),
          inactiveTrackColor: const Color(0xff0A2538),
        ),
      ),
    );
  }

  // ----------- Build -----------

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: h * 0.05, bottom: h * 0.01),
            child: const Text(
              "SETTINGS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Container(
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
                padding: EdgeInsets.symmetric(
                  horizontal: w * 0.04,
                  vertical: h * 0.02,
                ),
                children: [
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_1.png",
                    title: "Language",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: showLanguageBottomSheet,
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/profileIcon/pro_3.png",
                    title: "Clear Search History",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () => showClearHistoryDialog(context),
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
                    onTap: showAppModeBottomSheet,
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_4.png",
                    title: "Privacy Policy",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {},
                  ),
                  _buildSettingsTile(
                    image: "assets/Icon/settingIcon/sett_5.png",
                    title: "Terms & Conditions",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
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
        height: 70,
        // Fixed height for all tiles
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF09233A),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: const Color(0xff536674), width: 0.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20, // Keep same size
              backgroundColor: Colors.white,
              child: Image.asset(image, height: Get.width / 22),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 15),
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
