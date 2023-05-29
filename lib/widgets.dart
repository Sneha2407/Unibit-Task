import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageIcon extends StatelessWidget {
  final String name;
  final int size;
  const CustomImageIcon({super.key, required this.name, required this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(name, width: size.w, height: size.w);
  }
}

class CustomIconButton extends StatelessWidget {
  final String path;
  final int size;
  final Function()? onPressed;
  const CustomIconButton(
      {super.key, required this.path, required this.size, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(path, width: size.w, height: size.w),
      onPressed: onPressed,
    );
  }
}
