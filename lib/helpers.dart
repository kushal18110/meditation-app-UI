import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color gradientLeft = const Color(0xFFcf5460);
Color gradientRight = const Color(0xFFdf6c77);
Color myGrey = Colors.white;
Color textColor=Color.fromRGBO(148, 138, 137, 1);

//sized boxs

SizedBox sizeh5 = const SizedBox(
  height: 5,
);
SizedBox sizeh10 = const SizedBox(
  height: 10,
);
SizedBox sizeh15 = const SizedBox(
  height: 15,
);
SizedBox sizeh20 = const SizedBox(
  height: 20,
);
SizedBox sizeh25 = const SizedBox(
  height: 25,
);
SizedBox sizeh30 = const SizedBox(
  height: 30,
);
SizedBox sizeh35 = const SizedBox(
  height: 35,
);

SizedBox sizeW10 = const SizedBox(
  height: 10,
);
SizedBox sizeW15 = const SizedBox(
  height: 15,
);
SizedBox sizeW20 = const SizedBox(
  height: 20,
);

//emoji
Image happy = Image.asset('lib/assets/happy.png');
Image sad = Image.asset('lib/assets/sad.png');
Image thinking = Image.asset('lib/assets/thinking.png');
Image sleeping = Image.asset('lib/assets/sleeping.png');
Image neutral = Image.asset('lib/assets/neutral.png');

// custom menu icon
Image menu = Image.asset('lib/assets/menu.png');
Image back6 = Image.asset('lib/assets/back-svgAsset-3.png');
AssetImage background= AssetImage('lib/assets/backgroundAsset-3.png');

//meditation backgrounds
SvgPicture back1 = SvgPicture.asset(
  'lib/assets/back-svgAsset-1.svg',
  fit: BoxFit.contain,
);
SvgPicture back2 = SvgPicture.asset('lib/assets/back-2.svg');
SvgPicture back3 = SvgPicture.asset(
  'lib/assets/back-svgAsset-2.svg',
  fit: BoxFit.cover,
);
SvgPicture back4 = SvgPicture.asset('lib/assets/back-4.svg');
SvgPicture back5 = SvgPicture.asset('lib/assets/back-item-5.svg');

//individual assests
SvgPicture person_1 = SvgPicture.asset('lib/assets/itemAsset-1.svg');
SvgPicture person_2 = SvgPicture.asset('lib/assets/itemAsset-2.svg');
SvgPicture person_3 = SvgPicture.asset('lib/assets/itemAsset-3.svg');
SvgPicture person_4 = SvgPicture.asset('lib/assets/item-Asset-4.svg');
SvgPicture person_5 = SvgPicture.asset('lib/assets/item-2-Asset-1.svg');
SvgPicture person_6 = SvgPicture.asset('lib/assets/item-2-Asset-2.svg');
