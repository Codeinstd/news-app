import 'package:flutter/material.dart';
import 'package:news_app/classes/color.dart';
import 'package:news_app/classes/size_config.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  final txtheader = 18;

  /* static const String _title = 'News App'; */

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              /* Top Section */
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 36, right: 32),
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
                                'assets/avatar_screen 3.png',
                                height: 54,
                                width: 54,
                              )),
                          const SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizeConfig().pbold('Elly Byers ', 18),
                              SizeConfig().spaceH(1),
                              SizeConfig().preg('Author & Writer', 14),
                            ],
                          ),
                          const SizedBox(
                            width: 36,
                          ),
                          SizedBox(
                            child: Card(
                              elevation: 0,
                              color: mystyle.blue,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 14, left: 20, right: 20, bottom: 14),
                                  child: Row(
                                    children: [
                                      SizeConfig().btnreg('Following', 12),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      /* ShortInfo  Section */

                      SizeConfig().preg(
                          'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful.. ',
                          16),
                      const SizedBox(
                        height: 16,
                      ),

                      /* Analytic  Section */

                      SizedBox(
                        child: Card(
                          elevation: 0,
                          color: mystyle.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, left: 32, right: 32, bottom: 24),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizeConfig().cdbold('54.21k', 16),
                                        SizeConfig().spaceH(2),
                                        SizeConfig().preg('Followers', 10),
                                      ]),
                                  const SizedBox(
                                    width: 32,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizeConfig().cdbold('2.11k', 16),
                                        SizeConfig().spaceH(2),
                                        SizeConfig().preg('Posts', 10),
                                      ]),
                                  const SizedBox(
                                    width: 32,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizeConfig().cdbold('36.40', 16),
                                        SizeConfig().spaceH(2),
                                        SizeConfig().preg('Followers', 10),
                                      ]),
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      /* News Section */
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizeConfig().pbold('Ellys Post', 18),
                            SizeConfig().smreg('View All', 14),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().wbox01(
                                context,
                                const Text('data'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().wbox02(
                                context,
                                const Text('data'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      /* Popular from elly Section */

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 0,
                          right: 0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizeConfig().pbold('Popular From Elly', 18),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                            right: 8,
                          ),
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) =>
                                Row(
                              children: [
                                Image.asset(
                                  'assets/card img03_screen 3.png',
                                  width: 200,
                                ),
                                Image.asset(
                                  'assets/card img00_screen 3.png',
                                  width: 200,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
