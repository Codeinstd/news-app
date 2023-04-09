import 'package:flutter/material.dart';
import 'package:news_app/classes/size_config.dart';
import 'package:news_app/screens/detail.dart';
import 'package:news_app/screens/profile.dart';
import '../classes/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  final txtheader = 18;

  /* static const String _title = 'News App'; */

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Detail(),
    const Profile(),
  ];
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              /* Top Section */
              child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 32),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/Avatar.png',
                                  height: 49,
                                  width: 49,
                                )),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizeConfig().pbold('Welcome', 18),
                                SizeConfig().spaceH(2),
                                SizeConfig().preg('Monday, 3 October', 14),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        /* Search Section */
                        Container(
                          width: 315,
                          height: 49,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: mystyle.blue.withOpacity(0.051),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.0,
                                )
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child:
                                    SizeConfig().preg('Search for Article', 16),
                              ),
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: mystyle.blue,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/Search.png'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        /* Highlight Section */
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 30,
                            ),
                            child: SizedBox(
                              height: 16,
                              child: ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  children: [
                                    SizeConfig().rowItem('#Health'),
                                    SizeConfig().rowItem('#Music'),
                                    SizeConfig().rowItem('#Technology'),
                                    SizeConfig().rowItem('#Sports'),
                                    SizeConfig().rowItem('#Business'),
                                    SizeConfig().rowItem('#Information')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        /* Card Section */
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 30,
                            ),
                            child: SizedBox(
                              height: 320,
                              child: ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  children: [
                                    SizeConfig().boxW(
                                      context,
                                      const Text(
                                        'data',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    SizeConfig().boxB(
                                      context,
                                      const Text('data'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),

                        /* Short for you Section */
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                            right: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().pbold('Short For You', 18),
                              SizeConfig().smreg('View All', 14),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 75,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 30,
                            ),
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) =>
                                  Row(
                                children: [
                                  SizeConfig().smbox(
                                    context,
                                    const Text('data'),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  SizeConfig().smmbox(
                                    context,
                                    const Text('data'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
