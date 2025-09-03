import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificationsEnabled = true;

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
              child: Center(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    _buildSettingsTile(
                      icon: Icons.language,
                      title: "Language",
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    _buildSettingsTile(
                      icon: Icons.history,
                      title: "Clear Search History",
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    _buildSettingsTile(
                      icon: Icons.notifications,
                      title: "Notifications",
                      trailing: Switch(
                        value: notificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            notificationsEnabled = value;
                          });
                        },
                        activeThumbColor: Color(0xff0a2538),
                        activeTrackColor: Colors.white,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Color(0xff0a2538),
                      ),
                    ),
                    _buildSettingsTile(
                      icon: Icons.brightness_6,
                      title: "App Mode",
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    _buildSettingsTile(
                      icon: Icons.lock,
                      title: "Privacy Policy",
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    _buildSettingsTile(
                      icon: Icons.description,
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
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Container(
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
            child: Icon(icon, color: const Color(0xFF0E2A47)),
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
    );
  }
}
