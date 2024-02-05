import 'package:buma_techtest/feature/list_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Feature extends StatelessWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27.w, right: 27.w, top: 32.h),
      child: SizedBox(
        height: 157.h,
        child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 8, children: [
          ...iconMenu.map(
            (icon) => Column(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/icons/${icon.icon}.png',
                    width: 10.w,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  icon.title,
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
