import 'package:crud_flutter/src/utils/pageModel/page_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size size = MediaQuery.of(context).size;

    return PageModel(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcoming Text
            Text(
              " ${user[0]}, your are loged!!!",
              style: TextStyle(
                fontSize: size.height * 0.05,
              ),
              textAlign: TextAlign.center,
            ),

            // Some Space
            SizedBox(
              height: size.height * 0.1,
            ),

            // User info
            for (int item = 0; item < user.length; item++)
              Text(
                user[item].toString(),
                style: TextStyle(
                  fontSize: size.height * 0.03,
                ),
                textAlign: TextAlign.center,
              ),

            // Some Space
            SizedBox(
              height: size.height * 0.1,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.edit),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Just tp prototype
List<String> user = ["Angel", "angel@email.com", "123456"];
