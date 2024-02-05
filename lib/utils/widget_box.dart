import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetBox extends StatelessWidget {
  final String text;
  final Color? boxColor;
  final Color? textColor;

  const WidgetBox({
    Key? key,
    required this.text,
    required this.boxColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 48.h,
        width: 361.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: boxColor ?? const Color(0XFFF5F8FA),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
