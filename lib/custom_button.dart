import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton ({super.key, required this.text});

  final String text;

  @override
  State <CustomButton> createState(){
    return _CustomButtonState();
  }
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(context) {
    return Container(
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 5, 
            color: Color.fromARGB(255, 225, 0, 255)),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          padding: EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 20,
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_right_alt,
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        label: Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 255, 255, 255),
            letterSpacing: 2,
            shadows: [
              Shadow(
                color: const Color.fromARGB(255, 0, 0, 0),
                offset: Offset(6, 2),
                blurRadius: 4,
              ),
            ],
          )
        ),
      ),
    );
  }
}