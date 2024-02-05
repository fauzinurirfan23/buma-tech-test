import 'package:buma_techtest/utils/alert_widget.dart';
import 'package:buma_techtest/utils/widget_box.dart';
import 'package:buma_techtest/utils/widget_container.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AktivitasCuti extends StatefulWidget {
  const AktivitasCuti({super.key});

  @override
  State<AktivitasCuti> createState() => _AktivitasCutiState();
}

class _AktivitasCutiState extends State<AktivitasCuti> {
  bool isOnSwitch = false;

  var selectedItem;
  List _dropdownItems = ['Cuti Besar', 'Cuti Tahunan'];

  TextEditingController inputStartDate = TextEditingController();

  Future _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1945, 8),
      lastDate: DateTime(2050),
      builder: (BuildContext? context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color.fromARGB(255, 6, 81, 143),
            colorScheme: const ColorScheme.light(
              primary: Color.fromARGB(255, 6, 81, 143),
            ),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    return picked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Aktivitas Cuti',
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 32.h,
                width: 361.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0XFFF5F8FA),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Text(
                    'Silahkan pilih tipe cuti yang ingin kamu ajukan',
                    style: GoogleFonts.poppins(
                        color: const Color(0XFF7E93A8),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(text: 'Tipe Cuti'),
                      TextSpan(
                        text: ' *',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Color(0XFFD62926),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                    width: 361.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: DropdownButtonFormField(
                            icon: const Visibility(
                                visible: false,
                                child: Icon(Icons.arrow_downward)),
                            decoration: InputDecoration(
                                suffixIcon: Container(
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF5F8FA),
                                      border: Border.all(
                                          color: const Color(0XFFE8ECF5),
                                          width: 1)),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                  ),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.h, 5.h, 10.h, 10.h),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent))),
                            value: selectedItem,
                            items: _dropdownItems.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedItem = newValue.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 16.h),
            Container(
              width: 361.w,
              height: 1,
              color: const Color(0XFFE8ECF5),
            ),
            SizedBox(height: 16.h),
            Container(
                width: 361.w,
                height: 40.h,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/cuti_thn.png',
                      color: Colors.green,
                      height: 40.h,
                      width: 40.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cuti',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4.w),
                        Row(
                          children: [
                            RichText(
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              text: TextSpan(
                                text: 'Pekerja Cuti pada tanggal',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF7E93A8),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            SizedBox(width: 4.w),
                            RichText(
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              text: TextSpan(
                                text: '23 Sep - 6 Oct 2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0XFF333F47),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(height: 16.h),
            const WidgetBox(
                boxColor: Color(0XFFF5F8FA),
                textColor: Color(0XFF7E93A8),
                text:
                    'Untuk mengajukan cuti kamu perlu melengkapi data dibawah ini'),
            SizedBox(height: 16.h),
            Container(
              width: 361.w,
              height: 230.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanggal Cuti',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: const Color(0XFF333F47))),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      ContainerCuti(
                        height: 80.h,
                        width: 168.w,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                                children: const [
                                  TextSpan(text: 'Tanggal Mulai'),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0XFFD62926),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              height: 40.h,
                              width: 168.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color(0XFFE8ECF5),
                                    width: 1,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0XFFF5F8FA),
                                          border: Border.all(
                                              color: const Color(0XFFE8ECF5),
                                              width: 1)),
                                      child: Image.asset(
                                        'assets/icons/icon_cuti_thn.png',
                                        height: 16.h,
                                        width: 16.w,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Pilih tanggal mulai cuti',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 24.w),
                      ContainerCuti(
                          height: 80.h,
                          width: 168.w,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cuti Beberapa Hari',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0XFF333F47))),
                              ),
                              Container(
                                  height: 40.h,
                                  width: 44.w,
                                  child: Transform.scale(
                                    scaleY: 1.5.w,
                                    scaleX: 1.5.h,
                                    child: Switch(
                                      activeColor: const Color(0XFF08A94C),
                                      value: isOnSwitch,
                                      onChanged: (value) {
                                        setState(() {
                                          isOnSwitch = value;
                                        });
                                      },
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                  )),
                              SizedBox(height: 4.w),
                              Text(
                                'Untuk cuti lebih dari 1 hari',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black)),
                              ),
                            ],
                          ))
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      ContainerCuti(
                        height: 80.h,
                        width: 168.w,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                                children: const [
                                  TextSpan(text: 'Tanggal Selesai'),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0XFFD62926),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              height: 40.h,
                              width: 168.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color(0XFFE8ECF5),
                                    width: 1,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0XFFF5F8FA),
                                          border: Border.all(
                                              color: const Color(0XFFE8ECF5),
                                              width: 1)),
                                      child: Image.asset(
                                        'assets/icons/icon_cuti_thn.png',
                                        height: 16.h,
                                        width: 16.w,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Pilih tanggal mulai cuti',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.w),
                      ContainerCuti(
                          height: 80.h,
                          width: 168.w,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lama Cuti',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0XFF333F47))),
                              ),
                              SizedBox(height: 4.h),
                              Container(
                                height: 40.h,
                                width: 168.w,
                                decoration: BoxDecoration(
                                    color: const Color(0XFFE8ECF5),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: const Color(0XFFE8ECF5),
                                      width: 1,
                                    )),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF5F8FA),
                                      border: Border.all(
                                          color: const Color(0XFFE8ECF5),
                                          width: 1)),
                                ),
                              ),
                              Text(
                                'Jumlah lama kamu cuti',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black)),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            const WidgetBox(
              boxColor: Color(0XFFCDE5F8),
              textColor: Color(0XFF047CDD),
              text: 'Jika Cuti Tahunan di update maka cuti lain akan terhapus',
            )
          ],
        ),
      ),
      bottomNavigationBar: footerWidget(),
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
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 172.5.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.h),
                      color: const Color(0XFFF5F8FA)),
                  child: Center(
                    child: Text(
                      'Buat Pengajuan leave ',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w300,
                              color: const Color(0XFF333F47))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15.0),
                          ),
                        ),
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return Wrap(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Container(
                                            width: 25,
                                            height: 6,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromARGB(
                                                    255, 208, 208, 208)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Text('Tambah Aktivitas Cuti',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                color:
                                                    const Color(0XFF333F47))),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Container(
                                          height: 97.h,
                                          width: 361.w,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Tipe Cuti',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: const Color(
                                                                  0XFF333F47))),
                                                  Text('Cuti Besar',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: const Color(
                                                                  0XFF333F47))),
                                                ],
                                              ),
                                              SizedBox(height: 16.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Durasi',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: const Color(
                                                                  0XFF333F47))),
                                                  Text('3 Hari',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: const Color(
                                                                  0XFF333F47))),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      _showAlertDialogBatal(
                                                          context);
                                                    },
                                                    child: Container(
                                                      height: 40.h,
                                                      width: 172.5.w,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFFE8ECF5),
                                                            width: 1,
                                                          ),
                                                          color: const Color(
                                                              0XFFF5F8FA),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Text(
                                                          'Batal',
                                                          style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: const Color(
                                                                      0XFF333F47))),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      _showAlertDialogTambahCuti(
                                                          context);
                                                    },
                                                    child: Container(
                                                      height: 40.h,
                                                      width: 172.5.w,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: const Color(
                                                                0XFF047CDD),
                                                            width: 1,
                                                          ),
                                                          color: const Color(
                                                              0XFF047CDD),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Text(
                                                          '+ Tambahkan ',
                                                          style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                        });
                  },
                  child: Container(
                    height: 40.h,
                    width: 172.5.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: Color(0xFF047CDD)),
                    child: Center(
                      child: Text(
                        '+ Tambahkan ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

void _showAlertDialogTambahCuti(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertWidget(
        image: Image.asset(
          'assets/images/illustration.png',
          height: 100.h,
          width: 100.w,
        ),
        title: Text('Woohoo!',
            style: GoogleFonts.poppins(
                fontSize: 16.sp, fontWeight: FontWeight.bold)),
        content: Text('Aktivitas cuti kamu berhasil ditambahkan',
            style: GoogleFonts.poppins(
                fontSize: 12.sp, fontWeight: FontWeight.w500)),
      );
    },
  );
}

void _showAlertDialogBatal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertWidget(
        title: Text('Oops!',
            style: GoogleFonts.poppins(
                fontSize: 16.sp, fontWeight: FontWeight.bold)),
        content: Text('Aktivitas cuti kamu batal ditambahkan',
            style: GoogleFonts.poppins(
                fontSize: 12.sp, fontWeight: FontWeight.w500)),
        image: Image.asset(
          'assets/images/illustration2.png',
          height: 100.h,
          width: 100.w,
        ),
      );
    },
  );
}

Future<void> _selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );

  if (pickedDate != null) {}
}
