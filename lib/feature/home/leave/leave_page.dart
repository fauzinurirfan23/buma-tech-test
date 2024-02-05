import 'package:buma_techtest/feature/home/aktivitas_cuti/aktivitas_cuti.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({super.key});

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Leave',
          style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Container(
          height: 716.h,
          width: 393.w,
          color: Colors.white,
          child: Column(
            children: [
              componen_1(),
              SizedBox(height: 8.h),
              componen_2(),
              SizedBox(height: 8.h),
              componen_3(),
              SizedBox(height: 16.h),
              componen_4()
            ],
          ),
        ),
      ),
      bottomNavigationBar: footerWidget(),
    );
  }

  Container componen_4() {
    return Container(
      height: 88.h,
      width: 361.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFFE8ECF5), // Warna border
            width: 1, // Lebar border
          ),
          borderRadius: BorderRadius.circular(10.h)),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon_cuti.png',
                  color: Colors.green,
                  height: 32.h,
                  width: 32.w,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Izin',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '-',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container componen_3() {
    return Container(
        child: StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XFF06873D),
            ),
            child: contentGrid1(),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1.2,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0XFFD5FADD),
                border: Border.all(
                  color: const Color(0XFF06873D),
                  width: 1.w,
                )),
            child: contentGrid2(),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2.3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XFF047CDD),
            ),
            child: contentGrid3(),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0XFFCDE5F8),
                border: Border.all(color: const Color(0XFF0363B1), width: 1.w)),
            child: contentGrid4(),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFFCDE5F8),
                  border:
                      Border.all(color: const Color(0XFF0363B1), width: 1.w)),
              child: contentGrid5()),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFFCDE5F8),
                  border:
                      Border.all(color: const Color(0XFF0363B1), width: 1.w)),
              child: contentGrid6()),
        ),
      ],
    ));
  }

  Column contentGrid6() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 8.w),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 120.w,
                    child: Text(
                      'Cuti Bersama Keluarga',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 11.sp, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 120.w,
                        child: Text(
                          '24 Mar 2024',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack contentGrid4() {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.h),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 120.w,
                          child: Text(
                            'Cuti Besar',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Container(
                              width: 125.w,
                              child: Text(
                                '24 - 25 Mar 2024',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Stack contentGrid5() {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 8.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120.w,
                        child: Text(
                          'Perpanjangan Cuti Tahunan',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 120.w,
                            child: Text(
                              '24 Mar 2024',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Stack contentGrid3() {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/waveBlue.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cuti Tahunan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 59.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Image.asset(
                  'assets/icons/icon_cuti.png',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      text: TextSpan(
                        text: '3 Hari',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Text(
              'Berakhir pada 25 Mar 2024',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Stack contentGrid2() {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/waveYellow.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 8.h),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/icon_cuti.png',
                    height: 32.h,
                    width: 32.w,
                    color: const Color(0XFF08A94C),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Cuti Free',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Mulai',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w200)),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '24 Mar 2024',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Berakhir',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w200)),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '-',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack contentGrid1() {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/waveYellow.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cuti',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 59.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Image.asset(
                  'assets/icons/icon_cuti.png',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      text: TextSpan(
                        text: 'Mulai dari',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      //textDirection: TextDirection.ltr,
                      softWrap: true,
                      //maxLines: 2,
                      text: TextSpan(
                        text: '24 Mar 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Text(
              'Berakhir pada 25 Mar 2024',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container componen_2() {
    return Container(
      height: 70.h,
      width: 361.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0XFFF5F8FA),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Text(
          'Berikut informasi terkait cuti yang dapat dilakukan sebelum membuat request cuti, pilih "create form leave" untuk membuat pengajuan cuti',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }

  Center componen_1() {
    return Center(
      child: Column(
        children: [
          Text(
            'Information Leave',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
          ),
          Text(
            'Please check detail your information leave ',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w300)),
          ),
        ],
      ),
    );
  }

  Container footerWidget() {
    return Container(
        height: 72.h,
        width: 393.w,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[300]!,
              width: 1.0,
            ),
          ),
        ),
        // Tinggi footer
        // Warna footer
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const AktivitasCuti();
                },
              ));
            },
            child: Container(
              height: 40.h,
              width: 361.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.h),
                  color: const Color(0xFF047CDD)),
              child: Center(
                child: Text(
                  'Buat Pengajuan leave ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        ));
  }
}
