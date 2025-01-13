
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Center(
            child: Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}
