import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../classes/color.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  Widget spaceW(line) {
    return const SizedBox(height: 16);
  }

  Widget spaceH(line) {
    return const SizedBox(height: 6);
  }

  Widget blankH(res) {
    double a1 = res.toDouble();
    return SizedBox(height: a1);
  }

  Widget blankW(res) {
    double a1 = res.toDouble();
    return SizedBox(width: a1);
  }

  Widget boxW(ctx, txt) {
    return Card(
      elevation: 8,
      shadowColor: mystyle.lighterWhite,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: SizedBox(
          width: MediaQuery.of(ctx).size.width / 1.5,
          height: MediaQuery.of(ctx).size.width / 1.29,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/card img 01.png',
                    width: 231,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizeConfig().preg(
                      'Feel the thrill on the only surf simulator in Maldives 2022',
                      14),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              'assets/card_avatar 01.png',
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizeConfig().cardbigtext('Song Dong-Min', 2),
                              const SizedBox(
                                height: 4,
                              ),
                              SizeConfig().cardsmtext('Sep 09,2022', 2),
                            ],
                          ),
                          const SizedBox(
                            width: 28,
                          ),
                          Container(
                            width: 37,
                            height: 37,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: mystyle.lightWhite,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              'assets/Share.png',
                              height: 14,
                              width: 14,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }

  Widget boxB(ctx, txt) {
    return Card(
      elevation: 8,
      shadowColor: mystyle.lighterWhite,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: SizedBox(
          width: MediaQuery.of(ctx).size.width / 1.5,
          height: MediaQuery.of(ctx).size.width / 1.29,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/card img 02.png',
                    width: 231,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizeConfig().preg(
                      'Hong Kong wins over wall street CEOs after lifting strict ',
                      14),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              'assets/card_avatar 02.png',
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizeConfig().cardbigtext('Pang Bong', 2),
                              const SizedBox(
                                height: 4,
                              ),
                              SizeConfig().cardsmtext('Jan 03,2022', 2),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 37,
                            height: 37,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: mystyle.lightWhite,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              'assets/Share.png',
                              height: 14,
                              width: 14,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ))),
    );
  }

  Widget smbox(ctx, txt) {
    return Card(
      elevation: 8,
      shadowColor: mystyle.lighterWhite,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(ctx).size.width / 1.8,
        height: MediaQuery.of(ctx).size.width / 1.29,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 20,
            top: 12,
            bottom: 12,
          ),
          child: Row(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    height: 240,
                    child: Image.asset(
                      'assets/card img 04.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.play_circle_outline,
                      color: mystyle.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig().cardbigtext(
                      'Top Trending', MaxLengthEnforcement.enforced),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/eye.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('40,999', 0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget smmbox(ctx, txt) {
    return Card(
      elevation: 8,
      shadowColor: mystyle.lighterWhite,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(ctx).size.width / 1.8,
        height: MediaQuery.of(ctx).size.width / 1.29,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 20,
            top: 12,
            bottom: 12,
          ),
          child: Row(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    height: 240,
                    child: Image.asset(
                      'assets/card img 03.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.play_circle_outline,
                      color: mystyle.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig().cardbigtext('China Trading', 2),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/eye.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('40,999', 0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget wbox01(ctx, txt) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(ctx).size.width / 1.219,
        height: MediaQuery.of(ctx).size.width / 1.4,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 12,
          ),
          child: Row(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    height: 240,
                    child: Image.asset(
                      'assets/card img01_screen 3.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig().cardsmtext('News: Politics', 0),
                  SizeConfig().spaceH(2),
                  SizeConfig().pbold('Irans raging protests', 2),
                  SizeConfig().spaceH(2),
                  SizeConfig().pbold('Iranian paramilitary me..', 2),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/Calendar.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('16th May', 0),
                      const SizedBox(
                        width: 50,
                      ),
                      Image.asset('assets/Clock.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('09:32pm', 0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget wbox02(ctx, txt) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(ctx).size.width / 1.219,
        height: MediaQuery.of(ctx).size.width / 1.4,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 12,
          ),
          child: Row(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    height: 240,
                    child: Image.asset(
                      'assets/card img02_screen 3.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig().cardsmtext('News: Science', 0),
                  SizeConfig().spaceH(2),
                  SizeConfig().pbold('Putin to host ceremony', 2),
                  SizeConfig().spaceH(2),
                  SizeConfig().pbold('annexing occupied Ukr..', 2),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/Calendar.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('11th May', 0),
                      const SizedBox(
                        width: 50,
                      ),
                      Image.asset('assets/Clock.png', height: 16),
                      const SizedBox(
                        width: 4,
                      ),
                      SizeConfig().cardsmtext('10:15am', 0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  pbold(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 16,
          color: mystyle.black,
          fontFamily: 'nunito',
          fontWeight: FontWeight.w600),
    );
  }

  pbgbold(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 28,
          color: mystyle.black,
          fontFamily: 'nunito',
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600),
    );
  }

  psmbold(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 20,
          color: mystyle.black,
          fontFamily: 'nunito',
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600),
    );
  }

  cdbold(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 20,
          color: mystyle.white,
          fontFamily: 'nunito',
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600),
    );
  }

  chbold(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 20,
          color: mystyle.black,
          fontFamily: 'nunito',
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600),
    );
  }

  rowItem(txt) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 0),
      child: preg(txt, 16),
    );
  }

  preg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 14,
          color: mystyle.grey,
          fontFamily: 'nunito',
          height: 1.3,
          fontWeight: FontWeight.w400),
    );
  }

  btnreg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 14,
          color: mystyle.white,
          fontFamily: 'nunito',
          height: 1.3,
          fontWeight: FontWeight.w400),
    );
  }

  smreg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 14,
          color: mystyle.blue,
          fontFamily: 'nunito',
          height: 1.2,
          fontWeight: FontWeight.w400),
    );
  }

  cardsmtext(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
          fontSize: 12,
          color: mystyle.grey,
          fontFamily: 'nunito',
          fontWeight: FontWeight.w400),
    );
  }

  smtext(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 14.6,
        letterSpacing: 0.25,
        height: 1.35,
        color: mystyle.black,
        fontFamily: 'nunito',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  sztext(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 0.25,
        height: 1.35,
        color: mystyle.grey,
        fontFamily: 'nunito',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  cardbigtext(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 14,
        color: mystyle.black,
        fontFamily: 'nunito',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
