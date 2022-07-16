import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Size size;
  const LoginButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return GestureDetector(
      // The Button Style and Content
      child: Container(
        // Size
        height: height * 0.05,
        width: width,

        // Style
        decoration: BoxDecoration(
          // Gradient
          gradient: LinearGradient(
            colors: [
              //Colors.blue,
              Colors.cyan.withOpacity(0.9),
              Colors.pink.withOpacity(0.8),
              Colors.purple,
            ],
          ),

          // Radius
          borderRadius: BorderRadius.circular(20.0),
        ),

        // Content
        child: const Center(
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
