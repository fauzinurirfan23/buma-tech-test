import 'package:buma_techtest/feature/home/leave/leave_page.dart';
import 'package:buma_techtest/utils/widget_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFF0478D5),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 100.h,
                decoration: const BoxDecoration(
                    color: Color(0XFF0478D5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        'Employee Service',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      const Spacer(),
                      Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                        SizedBox(width: 16.w),
                        Icon(Icons.notifications,
                            color: Colors.white, size: 25.sp),
                      ])
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                child: Container(
                  height: 104.h,
                  width: 361.w,
                  decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      border:
                          Border.all(width: 1, color: const Color(0XFFE8ECF5)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(16.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60.h,
                          width: 156.5.w,
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.black, // Warna border
                                width: 1, // Ketebalan border
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Cuti Tahunan',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 16.h,
                                    width: 16.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0XFF047CDD),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/icons/calendar_month.png',
                                        color: Colors.white,
                                        height: 8.h,
                                        width: 8.w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    '3 Days',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Text(
                                'Ended on Mar 24, 2024',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60.h,
                          width: 156.5.w,
                          child: Column(
                            children: [
                              Text(
                                'Tahunan Diperpanjang',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 16.h,
                                    width: 16.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0XFF047CDD),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/icons/event_repeat.png',
                                        color: Colors.white,
                                        height: 8.h,
                                        width: 8.w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    '0 Days',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Text(
                                '-',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.sp),
                child: Container(
                  child: Text(
                    'Favorite',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.sp),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LeavePage();
                    }));
                  },
                  child: Container(
                    height: 56.h,
                    width: 164.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      border:
                          Border.all(width: 1, color: const Color(0XFFE8ECF5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sp),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/leave.png'),
                          SizedBox(
                            width: 16.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'Leave',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [Feature()],
            ),
          )
        ],
      ),
    );
  }
}
