import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final Size size;
  final int id;
  const LoginField({
    Key? key,
    required this.size,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Size
      height: height * 0.1,
      width: width,

      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: TextField(
          decoration: InputDecoration(
            label: id == 0
                ? Row(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Email"),
                    ],
                  )
                : Row(
                    children: const [
                      Icon(Icons.lock),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Password"),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
