import 'package:flutter/material.dart';

class PageModel extends StatelessWidget {
  final Widget child;
  const PageModel({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size size = MediaQuery.of(context).size;

    return Scaffold(

      // Use the full screen
      body: SizedBox(
        height: size.height,
        width: size.width,

        // Give a padding
        child: Padding(
          padding: const EdgeInsets.all(15.0),

          // Turn it scrollable
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }
}
