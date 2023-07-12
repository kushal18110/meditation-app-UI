import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app_ui/helpers.dart';
import 'package:meditation_app_ui/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: background)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  sizeh30,
                  customAppBar(),

                  //
                  sizeh20,
                  const Text(
                    'Discover the happiness',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),

                  //
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Container(
                height: 300,
                child: back5,
              ),
              Column(
                children: [
                  //
                  sizeh35,
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(12),
                    shadowColor: gradientLeft,
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'lib/assets/gradientAsset-2.png'))),
                      child: const Icon(
                        Icons.pause,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  //
                  sizeh20,
                  Slider(
                    value: .3,
                    onChanged: (value) {},
                    activeColor: gradientLeft,
                    thumbColor: Colors.white,
                    secondaryActiveColor: gradientRight,
                    inactiveColor: const Color.fromRGBO(235, 190, 190, 1),
                  ),

                  //
                  sizeh20,
                  playTime(),

                  //
                  sizeh30,
                  Container(
                    margin: horizontal20,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            playIcon(),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Add meaning to your life',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xFFf5e7e9),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            '52 min',
                            style: TextStyle(
                                color: Color.fromRGBO(205, 122, 132, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding playTime() {
    textColor=const Color.fromRGBO(105, 83, 84, 1);
    return Padding(
                  padding: horizontal20,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '06:45',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.volume_up_rounded,
                            color: Color.fromRGBO(223, 110, 121, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.volume_off_rounded,
                            color: Color.fromRGBO(235, 190, 190, 1),
                          ),
                        ],
                      ),
                      Text(
                        '34:00',
                        style: TextStyle(
                          color: textColor,
                        ),
                      )
                    ],
                  ),
                );
  }

  Container playIcon() {
    double size = 40;
    return Container(
      height: size,
      width: size,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('lib/assets/gradientAsset-2.png'))),
      child: const Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
        size: 35,
      ),
    );
  }

  Padding customAppBar() {
    double size = 40;
    return Padding(
      padding: horizontal20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.arrow_back_rounded,
            size: 27,
          ),
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(12)),
            child: const Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(187, 125, 135, 1),
            ),
          )
        ],
      ),
    );
  }
}
