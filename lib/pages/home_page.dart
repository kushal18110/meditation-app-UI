import 'package:flutter/material.dart';
import 'package:meditation_app_ui/helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';

EdgeInsets horizontal20 = EdgeInsets.symmetric(horizontal: 20);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: background)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeh30,
              customAppBar(),

              sizeh30,

              //
              Padding(
                padding: horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good afternoon, Kushal',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    sizeh5,
                    Text(
                      'How are you feeling?',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),

              sizeh30,

              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'lib/assets/back-svgAsset-3.png',
                            ))),
                    height: 250,
                    margin: horizontal20,

                    // child: back3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, .9),
                        borderRadius: BorderRadius.circular(12)),
                    height: 75,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                    padding: EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Are you ready for a new start',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          sizeh5,
                          Text(
                            'Dive deep into the mind and thought',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ]),
                  )
                ],
              ),

              sizeh30,

              //
              Padding(
                padding: horizontal20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    emotions(
                        'Happy',
                        happy,
                        LinearGradient(
                            colors: [gradientLeft, gradientRight],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                        null,
                        Colors.black),
                    emotions('Sad', sad, null, myGrey,
                        textColor),
                    emotions('Worried', neutral, null, myGrey,
                        textColor),
                    emotions('Thinking', thinking, null, myGrey,
                        textColor),
                    emotions('Sleeping', sleeping, null, myGrey,
                        textColor),
                  ],
                ),
              ),

              sizeh30,
              //

              Padding(
                padding: horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latest Prctices',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    sizeh20,
                    Row(
                      children: [
                        Expanded(
                          child: GridView(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 1.4),
                            children: [
                              practice('Focus', 'Focus on work', '4-12 MIN',
                                  'lib/assets/person-pngAsset-1.png'),
                              practice('Relax', 'Reframe stress', '3-10 MIN',
                                  'lib/assets/person-pngAsset-2.png'),
                              practice('Calm', 'calm your mind', '5-10 MIN',
                                  'lib/assets/practice-Asset-1.png'),
                              practice('Music', 'relaxing music', '5-15 MIN',
                                  'lib/assets/practice-Asset-2.png'),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding customAppBar() {
    double size=40;
    return Padding(
              padding: horizontal20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/gradientAsset-2.png'))),
                    padding: EdgeInsets.only(top: 3, left: 3, right: 3),
                    height: size,
                    width: size,
                    child: Image.asset(
                      'lib/assets/beard.png',
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: menu,
                  )
                ],
              ),
            );
  }
}

Widget practice(String name, String subTitle, String time, String imgPath) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white70,
        image: DecorationImage(
            alignment: Alignment.bottomRight,
            image: AssetImage(
              imgPath,
            ))),
    padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                subTitle,
                style: TextStyle(color: Color.fromRGBO(165, 153, 157, 1)),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFf5e7e9),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(7),
            child: Text(
              time,
              style: TextStyle(
                  color: Color.fromRGBO(205, 122, 132, 1),
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
  );
}

Widget emotions(String name, Image image, Gradient? gradient, Color? color,
    Color fontColor) {
  double size = 50;
  double radius = 10;
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            gradient: gradient),
        padding: EdgeInsets.all(radius),
        height: size,
        width: size,
        child: image,
      ),
      sizeh5,
      Text(
        name,
        style: TextStyle(fontSize: 12, color: fontColor),
      )
    ],
  );
}
