import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unibit_task/utils/colors.dart';
import 'package:unibit_task/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> gamesImages = [
    "assets/images/item_img1.png",
    'assets/images/item_img2.png'
  ];
  List<String> gamesNames = [
    "Play Ludo and Earn Money",
    'Play Cricket Fantasy League'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.h), // PreferredSize height
          child: AppBar(
            backgroundColor: Kcolors.black,
            leading: const CustomIconButton(
                path: 'assets/icons/appbar_icon.png', size: 40),
            actions: [
              IconButton(
                icon: const CustomIconButton(
                    path: 'assets/icons/notification.png', size: 30),
                onPressed: () {
                  // Handle leading icon press
                },
              ),
            ],
            title: const Text('My App'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Dipak 👋",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Kcolors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/fantasy_live.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: null,
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            // height: 160.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Kcolors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 120.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                        image: AssetImage(gamesImages[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: null,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    gamesNames[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Kcolors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 30.h,
                                        width: 70.w,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              child: CircleAvatar(
                                                radius: 15.r,
                                                backgroundImage: const AssetImage(
                                                    'assets/images/avatar1.png'),
                                              ),
                                            ),
                                            Positioned(
                                              left: 20,
                                              child: CircleAvatar(
                                                radius: 15.r,
                                                backgroundImage: const AssetImage(
                                                    'assets/images/avatar2.png'),
                                              ),
                                            ),
                                            Positioned(
                                              left: 40,
                                              child: CircleAvatar(
                                                radius: 15.r,
                                                backgroundImage: const AssetImage(
                                                    'assets/images/avatar3.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "50,000+",
                                            style: GoogleFonts.poppins(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Kcolors.black,
                                            ),
                                          ),
                                          Text(
                                            "players",
                                            style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              color: Kcolors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40.w,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.r),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Kcolors.yellowGradientLight,
                                                Kcolors.yellowGradientDark,
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Play Now',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Kcolors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      );
                    }),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ));
  }
}
