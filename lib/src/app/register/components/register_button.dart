import 'package:crud_flutter/src/app/register/controllers/register_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextButton extends StatelessWidget {
  final Size size;
  const NextButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    // Controller
    final controller = context.read<RegisterIdexController>();

    return GestureDetector(

      // Action
      onTap: () => controller.index < 3 ? controller.next() : false,

      // Button Content
      child: Container(
        // Size
        height: height * 0.05,
        width: width,

        // Style
        decoration: BoxDecoration(
          // Gradient
          gradient: LinearGradient(
            colors: [
              Colors.cyan.withOpacity(0.9),
              Colors.pink.withOpacity(0.8),
              Colors.purple,
            ],
          ),

          // Radius
          borderRadius: BorderRadius.circular(20.0),
        ),

        child: const Center(
          child: Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
