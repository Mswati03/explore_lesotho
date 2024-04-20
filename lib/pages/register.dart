

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 42,
                top: 355,
                child: SizedBox(
                  width: 346,
                  height: 36,
                  child: Text(
                    'Endless discoveries in the mountain kingdom',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: -7.26,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.76),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(color: Color(0xFF3EB534)),
                  ),
                ),
              ),
              Positioned(
                left: 103,
                top: 755,
                child: Container(
                  width: 200,
                  height: 66,
                  decoration: ShapeDecoration(
                    color: Color(0xD8EFEAEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 433,
                child: Container(
                  width: 346,
                  height: 66,
                  decoration: ShapeDecoration(
                    color: Color(0xD8EFEAEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 533,
                child: Container(
                  width: 346,
                  height: 66,
                  decoration: ShapeDecoration(
                    color: Color(0xD8EFEAEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 633,
                child: Container(
                  width: 346,
                  height: 66,
                  decoration: ShapeDecoration(
                    color: Color(0xD8EFEAEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 776,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 109,
                top: 913,
                child: Text(
                  'EXPLORE LESOTHO © 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 162,
                child: Container(
                  width: 368,
                  height: 193,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/368x193"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 454,
                child: Text(
                  'EMAIL ADDRESS',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 553,
                child: Text(
                  'PASSWORD',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 653,
                child: Text(
                  'CONFIRM PASSWORD',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 146,
                top: 715,
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Color(0xFF3200FF),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}