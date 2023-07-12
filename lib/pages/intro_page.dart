import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_ui/helpers.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: background)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  "Essentials For",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                sizeh5,
                const Text(
                  "Everyday Meditation",
                  style: TextStyle(fontSize: 27),
                ),
              ],
            ),

            //
            Column(
              children: [
                SizedBox(height: 350, child: back1),
                sizeh25,
                Text(
                  'An individual approach for\nyour mind that will change your life',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                sizeh25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    dots(Colors.black),
                    dots(Colors.grey.shade400),
                    dots(Colors.grey.shade400),
                    dots(Colors.grey.shade400),
                  ],
                ),
              ],
            ),
            sizeh25,

            //
            elevated_container()
          ],
        ),
      ),
    ));
  }
}

Widget elevated_container() {
  double radius = 12;
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Material(
      borderRadius: BorderRadius.circular(radius),
      elevation: 15,
      shadowColor: gradientRight,
      surfaceTintColor: gradientRight,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            gradient: LinearGradient(
                colors: [gradientLeft, gradientRight],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: const Text(
          'Let\'s get started',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget dots(Color color) {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 10,
    width: 10,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}
