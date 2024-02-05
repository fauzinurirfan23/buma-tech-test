import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertWidget extends StatelessWidget {
  final Widget title;
  final Widget content;
  final Widget image;

  const AlertWidget({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      title: Column(
        children: [
          Container(child: image),
          SizedBox(height: 8.h),
          title,
        ],
      ),
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            // Tutup alert dialog
            Navigator.of(context).pop();
          },
          child: Center(
            child: Container(
              height: 40.h,
              width: 172.5.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.h),
                color: const Color(0xFF047CDD),
              ),
              child: Center(
                child: Text(
                  'Tutup',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
