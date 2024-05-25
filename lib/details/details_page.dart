

import 'package:explore_lesotho/details/indie-page.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  
  @override
  Widget build(BuildContext context) {

  double screenHeight=0;
  double screenWidth=0;
    screenHeight= MediaQuery.of(context).size.height;
    screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
       resizeToAvoidBottomInset : false,
       
      appBar: AppBar(),
    body:SingleChildScrollView(
      child :Screen3Widget(),
      
      
      ),
      );
      }
      }/* Column(
      children: [
        Container(
          width: screenWidth,          height: screenHeight,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF5F8FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21.99),
            ),
          ),
          child: Stack(
            children: [
              Container(
                  width: screenWidth,
                  height: 361.79,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.66),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: screenWidth,
                          height: 361.79,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/274x362"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.66),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -0,
                        top: 17.27,
                        child: Container(
                          width: screenWidth,
                          height: 345.48,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.5299999713897705)],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11.52,
                        top: 279.26,
                        child: Container(
                          width: 154.51,
                          height: 67.18,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paradise Resort',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.60,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: 0.35,
                                ),
                              ),
                              const SizedBox(height: 11.73),
                              SizedBox(
                                width: 154.51,
                                child: Text(
                                  'Pantai Waecicu, Labuan Bajo, Kec. Komodo, Kabupaten Manggarai Barat, Nusa Tenggara Tim. 86554',
                                  style: TextStyle(
                                    color: Color(0xFFC2C2C2),
                                    fontSize: 8.80,
                                    fontFamily: 'SF Pro',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                    letterSpacing: 0.09,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 350,
                        top: 218.80,
                        child: Container(
                          width: 36.47,
                          height: 128.59,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 36.47,
                                height: 36.47,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/36x36"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1.47,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5.87),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 9.53),
                              Container(
                                width: 36.47,
                                height: 36.47,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/36x36"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1.47,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5.87),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 9.53),
                              Container(
                                width: 36.47,
                                height: 36.47,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/36x36"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1.47,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5.87),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     
                      
              
            ],
          ),
        ),

        
      ],
    ),
    
    ),

    
              
              
    
      
                
     Container(
                  width: 250.47,
                  height: 80.61,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                          color: Color(0xFF323232),
                          fontSize: 11.73,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.05,
                        ),
                      ),
                      const SizedBox(height: 8.80),
                      SizedBox(
                        width: 250.47,
                        child: Text(
                          'Welcome to resort paradise we ensure the best service during your stay in bali with an emphasis on customer comfort. Enjoy Balinese specialties, dance and music every Saturday for free at competitive prices. You can enjoy all the facilities at our resort',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color(0xFF787878),
                            fontSize: 8.80,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                            letterSpacing: 0.02,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               Container(
      width: 335,
      height: 112,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Facilities', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(35, 35, 35, 1),
        fontFamily: 'Montserrat',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 38,
        left: 0,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 4.333199977874756,
        left: 0.23772910237312317,
        child: Icon(Icons.heat_pump),
      ),
        ]
      )
    ), SizedBox(height : 6),
Text('1 Heater', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(183, 183, 183, 1),
        fontFamily: 'CircularXX',
        fontSize: 10,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ), SizedBox(width : 14),
Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 1,
        left: 2,
        child:Icon(Icons.dining),
      ),
        ]
      )
    ), SizedBox(height : 6),
Text('Dinner', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(200, 200, 200, 1),
        fontFamily: 'CircularXX',
        fontSize: 10,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ), SizedBox(width : 14),
Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 1.9999998807907104,
        left: 1,
        child: Icon(Icons.bathtub),
          )
        ]
      )
    ), SizedBox(height : 6),
Text('1 Tub', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(200, 200, 200, 1),
        fontFamily: 'CircularXX',
        fontSize: 10,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ), SizedBox(width : 14),
Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 2.999995231628418,
        left: 4,
        child: Icon(Icons.pool),
      ),
        ]
      )
    ), SizedBox(height : 6),
Text('Pool', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(200, 200, 200, 1),
        fontFamily: 'CircularXX',
        fontSize: 10,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ),

        ],
      ),
    )
      ),
        ]
      )
    ) ],
      ),
    ),

    backgroundColor: Colors.white,
    bottomNavigationBar: Container(
  
  decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 11.73,
                    offset: Offset(2.93, 0),
                    spreadRadius: 0,
                  )
                ],
              ),// Set background color to white
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 31.67,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price estimate',
              style: TextStyle(
                color: Color(0xFF787878),
                fontSize: 8.80,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.02,
              ),
            ),
            const SizedBox(height: 5.87),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\$480',
                    style: TextStyle(
                      color: Color(0xFF323232),
                      fontSize: 13.20,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: '/night',
                    style: TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 8.80,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 274.46,
        height: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 274.46,
              height: 50.86,
              padding: const EdgeInsets.symmetric(horizontal: 11.73, vertical: 8.80),
              clipBehavior: Clip.none,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 50),
                  Container(
                    width: 101.72,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8.80, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF2B66FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.80),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Book Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.26,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    
                  
  
    );
    
  }
}*/