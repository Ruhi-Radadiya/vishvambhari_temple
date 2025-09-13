import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/// Colors same as Register button theme
const _fill = Color(0xff071a31); // background
const _border = Color(0xff536674); // same as fill

/// ✅ Common TextField
class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.suffixIcon,
  });

  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final int maxLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;

  InputDecoration _decoration() {
    return InputDecoration(
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: _fill,
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.white38, fontSize: 14),
      // contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      contentPadding: EdgeInsets.symmetric(
        horizontal: Get.width / 22,
        vertical: Get.width / 22,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: _border, width: 0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: _border, width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      cursorColor: Colors.white,
      decoration: _decoration(),
      validator: validator,
      onChanged: onChanged,
    );
  }
}

/// ✅ SelectField (Dropdown style)
class SelectField extends StatefulWidget {
  final String title;
  final List<String> options;
  final ValueChanged<String> onSelected;

  const SelectField({
    super.key,
    required this.title,
    required this.options,
    required this.onSelected,
  });

  @override
  State<SelectField> createState() => _SelectFieldState();
}

class _SelectFieldState extends State<SelectField> {
  String? selected;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _fill,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: _border, width: 0.5),
      ),
      child: ExpansionTile(
        key: GlobalKey(),
        tilePadding: const EdgeInsets.symmetric(horizontal: 20),
        initiallyExpanded: isExpanded,
        onExpansionChanged: (expanded) {
          setState(() => isExpanded = expanded);
        },
        title: Text(
          selected ?? widget.title,
          style: TextStyle(
            color: selected == null ? Colors.white54 : Colors.white,
            fontSize: 15,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.white70),
        children: widget.options.map((option) {
          return ListTile(
            dense: true,
            title: Text(
              option,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            onTap: () {
              setState(() {
                selected = option;
                isExpanded = false;
              });
              widget.onSelected(option);
            },
          );
        }).toList(),
      ),
    );
  }
}

class MobileNumberField extends StatefulWidget {
  const MobileNumberField({super.key});

  @override
  State<MobileNumberField> createState() => _MobileNumberFieldState();
}

class _MobileNumberFieldState extends State<MobileNumberField> {
  final TextEditingController controller = TextEditingController();
  String selectedCountryCode = '+91';

  final List<String> countryCodes = ['+91', '+1', '+44', '+61'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff071a31),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color(0xff0ff536674), width: 0.5),
      ),
      padding: EdgeInsets.symmetric(horizontal: Get.width / 22),
      child: Row(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: "+91",
              dropdownColor: Color(0xFF2C2C3C),
              icon: Icon(Icons.arrow_drop_down, color: Colors.white),
              items: <String>["+91", "+1", "+44", "+61"]
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: [
                          Icon(Icons.flag, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(value, style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    );
                  })
                  .toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: Get.width / 18,
            width: 1,
            color: Colors.grey.shade600,
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              // controller: numberController,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xff536674)),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Color(0xff071a31),
                hintText: "Enter Mobile No.",
                hintStyle: const TextStyle(color: Colors.white38, fontSize: 14),
                // contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                contentPadding: EdgeInsets.symmetric(
                  // horizontal: Get.width / 22,
                  vertical: Get.width / 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UploadPhotoField extends StatefulWidget {
  const UploadPhotoField({super.key});

  @override
  State<UploadPhotoField> createState() => _UploadPhotoFieldState();
}

class _UploadPhotoFieldState extends State<UploadPhotoField> {
  File? selectedImage;

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => selectedImage = File(image.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImage,
      child: Container(
        height: Get.width / 6.8,
        decoration: BoxDecoration(
          color: Color(0xff071a31),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xff0ff536674), width: 0.5),
        ),
        alignment: Alignment.centerLeft,

        padding: EdgeInsets.only(left: Get.width / 34),

          child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Choose File",
                  style: const TextStyle(color: Colors.white54, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // Left side "Choose File"
            Container(
              height: 55,
              width: Get.width / 1.6,
              decoration: BoxDecoration(
                color: Color(0xff01122A),
                borderRadius: BorderRadius.circular(40), // 🔴 Same pill radius
              ),
              alignment: Alignment.center,
              child: const Text(
                "No File Chosen",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),

      // Container(
      //   height: Get.width / 6.8,
      //   decoration: BoxDecoration(
      //     color: Color(0xff071a31),
      //     borderRadius: BorderRadius.circular(30),
      //     border: Border.all(color: Color(0xff0ff536674), width: 0.5),
      //   ),
      //   alignment: Alignment.centerLeft,
      //
      //   padding: EdgeInsets.symmetric(horizontal: Get.width / 22),
      //   child: Row(
      //     children: [
      //       Icon(
      //         selectedImage == null ? Icons.upload_file : Icons.check_circle,
      //         color: Colors.white54,
      //       ),
      //       const SizedBox(width: 12),
      //       Expanded(
      //         child: Text(
      //           selectedImage == null ? "Upload Photo" : "Photo Selected",
      //           style: const TextStyle(color: Colors.white54, fontSize: 14),
      //           overflow: TextOverflow.ellipsis,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
//
// /// Colors matching your design
// const _fill = Color(0xFF0A2538); // dark fill
// const _border = Color(0xFF0A2538); // same as fill → no highlight
//
// class CommonTextField extends StatelessWidget {
//   const CommonTextField({
//     super.key,
//     required this.hint,
//     this.controller,
//     this.keyboardType,
//     this.textInputAction,
//     this.obscureText = false,
//     this.maxLines = 1,
//     this.validator,
//     this.onChanged,
//   });
//
//   final String hint;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final TextInputAction? textInputAction;
//   final bool obscureText;
//   final int maxLines;
//   final String? Function(String?)? validator;
//   final void Function(String)? onChanged;
//
//   InputDecoration _decoration() {
//     return InputDecoration(
//       filled: true,
//       fillColor: _fill,
//       hintText: hint,
//       hintStyle: const TextStyle(color: Colors.white54, fontSize: 14),
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(30), // full rounded
//         borderSide: const BorderSide(color: _border, width: 0),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(30),
//         borderSide: const BorderSide(color: _border, width: 0), // no orange
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(30),
//         borderSide: const BorderSide(color: Colors.redAccent, width: 1),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(30),
//         borderSide: const BorderSide(color: Colors.redAccent, width: 1),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       obscureText: obscureText,
//       maxLines: maxLines,
//       style: const TextStyle(color: Colors.white, fontSize: 15),
//       cursorColor: Colors.white,
//       decoration: _decoration(),
//       validator: validator,
//       onChanged: onChanged,
//     );
//   }
// }
//
// class SelectField extends StatefulWidget {
//   final String title; // e.g. "Gender"
//   final List<String> options; // e.g. ["Male", "Female", "Other"]
//   final ValueChanged<String> onSelected;
//
//   const SelectField({
//     super.key,
//     required this.title,
//     required this.options,
//     required this.onSelected,
//   });
//
//   @override
//   State<SelectField> createState() => _SelectFieldState();
// }
//
// class _SelectFieldState extends State<SelectField> {
//   String? selected;
//   bool isExpanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Get.width / 7,
//       decoration: BoxDecoration(
//         color: const Color(0xFF0A2538),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Theme(
//         data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//         child: ExpansionTile(
//           key: GlobalKey(),
//           // ensures fresh rebuild
//           tilePadding: const EdgeInsets.symmetric(horizontal: 16),
//           initiallyExpanded: isExpanded,
//           onExpansionChanged: (expanded) {
//             setState(() {
//               isExpanded = expanded;
//             });
//           },
//           title: Text(
//             selected ?? widget.title,
//             style: TextStyle(
//               color: selected == null ? Colors.white54 : Colors.white,
//               fontSize: 15,
//             ),
//           ),
//           trailing: const Icon(
//             Icons.keyboard_arrow_down,
//             color: Colors.white70,
//           ),
//           collapsedIconColor: Colors.white70,
//           iconColor: Colors.orange,
//           children: widget.options.map((option) {
//             return ListTile(
//               dense: true,
//               title: Text(
//                 option,
//                 style: const TextStyle(color: Colors.white, fontSize: 14),
//               ),
//               onTap: () {
//                 setState(() {
//                   selected = option;
//                   isExpanded = false; // 🔥 collapse after selecting
//                 });
//                 widget.onSelected(option);
//               },
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
//
// class MobileNumberField extends StatefulWidget {
//   const MobileNumberField({super.key});
//
//   @override
//   State<MobileNumberField> createState() => _MobileNumberFieldState();
// }
//
// class _MobileNumberFieldState extends State<MobileNumberField> {
//   final TextEditingController controller = TextEditingController();
//   String selectedCountryCode = '+91'; // default
//
//   // Example list of country codes
//   final List<String> countryCodes = ['+91', '+1', '+44', '+61'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//         color: const Color(0xFF0A2538),
//         borderRadius: BorderRadius.circular(30), // pill shape
//       ),
//       child: Row(
//         children: [
//           // Country code dropdown
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//             decoration: BoxDecoration(
//               color: const Color(0xFF0A2538),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                 value: selectedCountryCode,
//                 items: countryCodes
//                     .map(
//                       (code) => DropdownMenuItem(
//                         value: code,
//                         child: Text(
//                           code,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedCountryCode = value!;
//                   });
//                 },
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),
//           // Mobile number input
//           Expanded(
//             child: TextField(
//               controller: controller,
//               keyboardType: TextInputType.phone,
//               style: const TextStyle(color: Colors.white),
//               cursorColor: Colors.white,
//               decoration: const InputDecoration(
//                 hintText: 'Mobile number',
//                 hintStyle: TextStyle(color: Colors.white54),
//                 border: InputBorder.none,
//                 isDense: true,
//                 contentPadding: EdgeInsets.symmetric(vertical: 16),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class UploadPhotoField extends StatefulWidget {
//   const UploadPhotoField({super.key});
//
//   @override
//   State<UploadPhotoField> createState() => _UploadPhotoFieldState();
// }
//
// class _UploadPhotoFieldState extends State<UploadPhotoField> {
//   File? selectedImage;
//
//   Future<void> pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
//
//     if (image != null) {
//       setState(() {
//         selectedImage = File(image.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: pickImage,
//       child: Container(
//         height: 55,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.white30, width: 1),
//           borderRadius: BorderRadius.circular(40),
//           color: Colors.white24,
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 child: Text(
//                   "Choose File",
//                   style: const TextStyle(color: Colors.white54, fontSize: 14),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ),
//             // Left side "Choose File"
//             Container(
//               height: 55,
//               width: Get.width / 1.8,
//               decoration: BoxDecoration(
//                 color: Color(0xff01122A),
//                 borderRadius: BorderRadius.circular(40), // 🔴 Same pill radius
//               ),
//               alignment: Alignment.center,
//               child: const Text(
//                 "No File Chosen",
//                 style: TextStyle(color: Colors.white, fontSize: 14),
//               ),
//             ),
//           ],
//         ),
//       ),
//
//       // Container(
//       //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//       //   decoration: BoxDecoration(
//       //     color: const Color(0xFF0A2538),
//       //     borderRadius: BorderRadius.circular(30), // pill shape
//       //   ),
//       //   child: Row(
//       //     children: [
//       //       Icon(
//       //         selectedImage == null ? Icons.upload_file : Icons.check_circle,
//       //         color: Colors.white54,
//       //       ),
//       //       const SizedBox(width: 12),
//       //       Expanded(
//       //         child: Text(
//       //           selectedImage == null ? 'Upload Photo' : 'Photo Selected',
//       //           style: const TextStyle(color: Colors.white54),
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
