import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unibit_task/utils/colors.dart';

import 'navigation_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: Image.asset("assets/icons/unibit_logo.png")),
            ),
            SizedBox(
              height: 100.h,
            ),
            Text(
              "Login",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              // controller: titlecontroller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Mobile Number",
                hintStyle: TextStyle(color: Kcolors.txtDarkGrey),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Kcolors.txtDarkGrey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
              style: const TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              // controller: titlecontroller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Kcolors.txtDarkGrey),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Kcolors.txtDarkGrey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
              style: const TextStyle(color: Colors.black),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Kcolors.txtColorOrange,
                      // fontStyle: FontStyle.italic,
                    ),
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Kcolors.white,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                gradient: const LinearGradient(
                  colors: [
                    Kcolors.blueGradientDark,
                    Kcolors.blueGradientLight,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: TextButton(
                onPressed: () {
                  // Button action
                },
                child: Text(
                  'Login with OTP',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Kcolors.white,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Dont have an account? ",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Kcolors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Sign up now.",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Kcolors.txtColorOrange,
                      ),
                      // recognizer: recognizer,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
