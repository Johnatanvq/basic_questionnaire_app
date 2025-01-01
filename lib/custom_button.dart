import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton ({
    super.key,
    required this.text,
    required this.onTap
  });

  final String text;
  final void Function() onTap;

  @override
  State <CustomButton> createState(){
    return _CustomButtonState();
  }
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30
      ),
      child: OutlinedButton(
        onPressed: widget.onTap,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1, 
            color: Color.fromARGB(255, 204, 0, 255)),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 50,
          ),
          backgroundColor: Color.fromARGB(255, 81, 0, 104),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
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