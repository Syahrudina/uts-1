import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedication1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(23.5, 56.1, 23.5, 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      width: 11.3,
                      height: 19.8,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_5_x2.svg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.7,
                    height: 12.7,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_7_x2.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.1),
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
              SizedBox(height: 12),
              Text(
                'Add medication',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  height: 1.1,
                  letterSpacing: -0.4,
                  color: Color(0xFF191D30),
                ),
              ),
              SizedBox(height: 45),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F6F7),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 64,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Transform.rotate(
                          angle: 1.5731313907,
                          child: Image.asset(
                            'assets/images/pill_01_v_1_w_1.png',
                            width: 33.1,
                            height: 33.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F6F7),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 64,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(9.7, 15.8, 9.6, 16.7),
                        child: Transform.rotate(
                          angle: 1.5731313907,
                          child: Image.asset(
                            'assets/images/caps_79_dsddssd_1.png',
                            width: 44.7,
                            height: 31.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F6F7),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 64,
                      child: Padding(
                        padding: EdgeInsets.all(15.4),
                        child: Image.asset(
                          'assets/images/amp_022.png',
                          width: 31,
                          height: 35.3,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F6F7),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 64,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15.4, 9.9, 14.8, 9.2),
                        child: Transform.rotate(
                          angle: 1.5731313907,
                          child: Image.asset(
                            'assets/images/ing_2.png',
                            width: 33.7,
                            height: 44.9,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
              Text(
                'Name',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  height: 1.2,
                  color: Color(0xFFC4CACF),
                ),
              ),
              SizedBox(height: 44),
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
              SizedBox(height: 44),
              Row(
                children: [
                  Text(
                    'Nevermind',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.2,
                      color: Color(0xFFC4CACF),
                    ),
                  ),
                  SizedBox(width: 12),
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
                  Spacer(),
                  Text(
                    'After meals',
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
              Container(
                padding: EdgeInsets.fromLTRB(0, 17, 0, 17),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Fill in the fields',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 1.3,
                    color: Color(0xFFC4CACF),
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