import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String?) onChange;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  const CustomTextField(
      {super.key,
      this.hintText = 'Sample Hint',
      required this.onChange,
      this.controller,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            onChanged: onChange,
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                disabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hintText,
                hintStyle: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
