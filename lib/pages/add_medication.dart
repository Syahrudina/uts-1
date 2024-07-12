import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_medication_1.dart';

class AddMedication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: SingleChildScrollView(
        // Tambahkan SingleChildScrollView untuk mengatasi overflow
        child: Container(
          padding: EdgeInsets.fromLTRB(18.5, 56.1, 18.5, 44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10), // Tambahkan jarak atas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30, // Sesuaikan ukuran container
                    height: 30, // Sesuaikan ukuran container
                    child: SvgPicture.asset(
                      'assets/vectors/vector_4_x2.svg',
                    ),
                  ),
                  Container(
                    width: 30, // Sesuaikan ukuran container
                    height: 30, // Sesuaikan ukuran container
                    child: SvgPicture.asset(
                      'assets/vectors/vector_3_x2.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Tambahkan jarak antara elemen
              Text(
                '1 is 2',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xFF8C8E97),
                ),
              ),
              SizedBox(height: 10), // Tambahkan jarak antara elemen
              Text(
                'Add medication',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 1.1,
                  letterSpacing: -0.4,
                  color: Color(0xFF191D30),
                ),
              ),
              SizedBox(height: 20), // Tambahkan jarak antara elemen
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100, // Sesuaikan ukuran container
                      height: 100, // Sesuaikan ukuran container
                      child: Image.asset(
                        'assets/images/pill_01_v_1_w_1.png',
                        fit: BoxFit.cover, // Sesuaikan ukuran gambar
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Tambahkan jarak antara elemen
                  Expanded(
                    child: Container(
                      width: 100, // Sesuaikan ukuran container
                      height: 100, // Sesuaikan ukuran container
                      child: Image.asset(
                        'assets/images/caps_79_dsddssd_1.png',
                        fit: BoxFit.cover, // Sesuaikan ukuran gambar
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Tambahkan jarak antara elemen
                  Expanded(
                    child: Container(
                      width: 100, // Sesuaikan ukuran container
                      height: 100, // Sesuaikan ukuran container
                      child: Image.asset(
                        'assets/images/amp_022.png',
                        fit: BoxFit.cover, // Sesuaikan ukuran gambar
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Tambahkan jarak antara elemen
                  Expanded(
                    child: Container(
                      width: 100, // Sesuaikan ukuran container
                      height: 100, // Sesuaikan ukuran container
                      child: Image.asset(
                        'assets/images/ing_2.png',
                        fit: BoxFit.cover, // Sesuaikan ukuran gambar
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Tambahkan jarak antara elemen
              Text(
                'Omega 3',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  height: 1.2,
                  color: Color(0xFF191D30),
                ),
              ),
              SizedBox(height: 10), // Tambahkan jarak antara elemen
              Text(
                'Single dose, e.g. 1 tablet',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  height: 1.2,
                  color: Color(0xFFC4CACF),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20), // Tambahkan jarak antara elemen
                  Text(
                    'Before meals',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.2,
                      color: Color(0xFFC4CACF),
                    ),
                  ),
                  SizedBox(height: 10), // Tambahkan jarak antara elemen
                  Container(
                    width: 145, // Sesuaikan ukuran container
                    padding: EdgeInsets.fromLTRB(20, 7, 20, 9),
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F6F7),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      'After meals',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.2,
                        color: Color(0xFF191D30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Tambahkan jarak antara elemen
                  Text(
                    'With food',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.2,
                      color: Color(0xFFC4CACF),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddMedication1()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1892FA),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.3,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
