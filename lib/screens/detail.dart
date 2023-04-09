import 'package:flutter/material.dart';
import '../classes/color.dart';
import '../classes/size_config.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  final txtheader = 18;

  /* static const String _title = 'News App'; */

  @override
  State<Detail> createState() => _detailState();
}

// ignore: camel_case_types
class _detailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            /* Bottombar Section */
            bottomNavigationBar: Container(
              height: 60,
              decoration: const BoxDecoration(
                color: mystyle.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/home.png',
                      color: mystyle.blue,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/bookmark.png',
                      color: mystyle.grey,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/notify.png',
                      color: mystyle.grey,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/profile.png',
                      color: mystyle.grey,
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                /* Top Section */
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(),
                                height: 350,
                                width: 375,
                                child: Image.asset(
                                  'assets/img_screen 2.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/Back_.png',
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 322,
                        width: 375,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 24, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizeConfig().pbgbold(
                                  'Unravel mysteries of the Maldives ', 24),
                              const SizedBox(
                                height: 14,
                              ),
                              SizedBox(
                                child: Card(
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    side: BorderSide(
                                        color: mystyle.lightGrey, width: 0.3),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8,
                                          left: 16,
                                          right: 16,
                                          bottom: 8),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/avatar_screen 2.png',
                                            height: 30,
                                            width: 30,
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          SizeConfig().cardsmtext(
                                              'Keanu Carpent May 17 . 8 min read',
                                              12),
                                        ],
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              SizeConfig().smtext(
                                  'Just say anything, George, say what evers natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, its 8:00. Hey, McFly, I thought I told you never ',
                                  16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
