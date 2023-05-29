import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unibit_task/screens/contact_page.dart';
import 'package:unibit_task/screens/home_page.dart';
import 'package:unibit_task/screens/profile_page.dart';
import 'package:unibit_task/screens/share_page.dart';
import 'package:unibit_task/screens/wallet_page.dart';
import 'package:unibit_task/utils/colors.dart';
import 'package:unibit_task/widgets.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _curentIndex = 4;

  final List<Widget> _pages = [
    const ContactPage(),
    const WalletPage(),
    const SharePage(),
    const ProfilePage(),
    const HomePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          extendBody: true,
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: Colors.transparent,
            elevation: 0.h,
            onPressed: () {
              _curentIndex = 4;
              setState(() {});
            },
            child: Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(50.r),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Kcolors.blueGradientDark,
                      Kcolors.blueGradientLight,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.r),
                  child: const CustomImageIcon(
                      name: 'assets/icons/plus.png', size: 20),
                )),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
              color: Kcolors.white,
              shape: const CircularNotchedRectangle(),
              notchMargin: 14.w,
              height: 80.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _curentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomIconButton(
                            path: 'assets/icons/contact.png', size: 20),
                        Text(
                          'Contact',
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: _curentIndex == 0
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: _curentIndex == 0
                                  ? Kcolors.txtDarkGrey
                                  : Kcolors.txtDarkGrey),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _curentIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        CustomIconButton(
                            path: _curentIndex == 1
                                ? 'assets/icons/wallet.png'
                                : 'assets/icons/wallet.png',
                            size: 20),
                        Text(
                          'Wallet',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: _curentIndex == 1
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: _curentIndex == 1
                                  ? Kcolors.txtDarkGrey
                                  : Kcolors.txtDarkGrey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _curentIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        CustomIconButton(
                            path: _curentIndex == 2
                                ? 'assets/icons/share.png'
                                : 'assets/icons/share.png',
                            size: 21),
                        Text(
                          'Share',
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: _curentIndex == 2
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: _curentIndex == 2
                                  ? Kcolors.txtDarkGrey
                                  : Kcolors.txtDarkGrey),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _curentIndex = 3;
                      });
                    },
                    child: Column(
                      children: [
                        CustomIconButton(
                            path: _curentIndex == 3
                                ? 'assets/icons/profile.png'
                                : 'assets/icons/profile.png',
                            size: 20),
                        Text(
                          'Profile',
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: _curentIndex == 3
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: _curentIndex == 3
                                  ? Kcolors.txtDarkGrey
                                  : Kcolors.txtDarkGrey),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          body: _pages[_curentIndex]),
    );
  }
}
