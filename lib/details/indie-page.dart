import 'package:flutter/material.dart';
import 'dart:math' as math;

class Screen3Widget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
              double screenHeight=0;
  double screenWidth=0;
    screenHeight= MediaQuery.of(context).size.height;
    screenWidth= MediaQuery.of(context).size.width;
          // Figma Flutter Generator Screen3Widget - FRAME
            return Scaffold(
              body: Container(
      width: screenWidth,
      height: 812,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(7, 87, 208, 0.17000000178813934),
          offset: Offset(34,24),
          blurRadius: 77
      )],
      gradient : LinearGradient(
          begin: Alignment(0.2445203959941864,0.7296451926231384),
          end: Alignment(-0.7296451926231384,1.146475076675415),
          colors: [Color.fromRGBO(230, 233, 243, 1),Color.fromRGBO(255, 255, 255, 1)]
        ),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 20,
        left: 20,
        child:  //Mask holder Template
    Container(
      width: 335,
      height: 386,
      child: null
    )
      ),Positioned(
        top: 392,
        left: 20,
        child: Container(
      width: 335,
      height: 167,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 68,
        left: 0,
        child: Text('Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(58, 84, 79, 1),
        fontFamily: 'CircularXX',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 145,
        left: 0,
        child: Text('Read more', textAlign: TextAlign.left, style: TextStyle(
        color: Colors.blue,
        fontFamily: 'CircularXX',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 167,
        left: 74,
        child: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 7.40625,
        left: 10.0078125,
        child:Icon(Icons.dining),
      ),
        ]
      )
    )
      ),Positioned(
        top: 10,
        left: 3,
        child: Container(
      width: 332,
      height: 42,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 25,
        left: 0,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
      width: 114,
      height: 17,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 15.999999046325684,
      height: 15.999999046325684,
      decoration: BoxDecoration(
          
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 1.9997656345367432,
        left: 2.0034894943237305,
         child:Icon(Icons.dining),
      ),Positioned(
        top: 1.9997656345367432,
        left: 2.0034894943237305,
        child:Icon(Icons.dining),
      ),
        ]
      )
    )
      ),Positioned(
        top: 2,
        left: 20,
        child: Text('4.5 (355 Reviews)', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(95, 95, 95, 1),
        fontFamily: 'CircularXX',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    ),

        ],
      ),
    )
      ),Positioned(
        top: 0,
        left: 263,
        child: Text('Show map', textAlign: TextAlign.left, style: TextStyle(
        color: Colors.blue,
        fontFamily: 'CircularXX',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 0,
        left: 0,
        child: Text('Coeurdes Alpes', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(35, 35, 35, 1),
        fontFamily: 'Montserrat',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 591,
        left: 20,
        child: Container(
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
         child:Icon(Icons.dining),
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
        child:Icon(Icons.dining),
      ),
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
        child:Icon(Icons.dining),
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
    )
      ),
      

      Positioned(
        top: 732,
        left: 20,
        child: Container(
      width: 335,
      height: 56,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 112,
        child: Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 56, 255, 0.23999999463558197),
          offset: Offset(0,6),
          blurRadius: 19
      )],
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('Book Now', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'CircularXX',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 10),
Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 17.750200271606445,
        left: 4.750100135803223,
        child: Container(
      width: 12.048999786376953,
      height: 15,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -5.524499893188477,
        left: 0,
        child: Transform.rotate(
        angle: 90 * (math.pi / 180),
         child:Icon(Icons.dining),
      )
      ),Positioned(
        top: 0,
        left: 8.949699401855469,
        child: Transform.rotate(
        angle: 90 * (math.pi / 180),
         child:Icon(Icons.dining),
      )
      ),
        ]
      )
    )
      ),
        ]
      )
    ),

        ],
      ),
    )
      ),Positioned(
        top: 4,
        left: 0,
        child: Container(
      width: 56,
      height: 48,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Price', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(35, 35, 35, 1),
        fontFamily: 'CircularXX',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 19,
        left: 0,
        child: Text('\$199', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(44, 214, 163, 1),
        fontFamily: 'Montserrat',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
        ]
      )
              ),
              bottomNavigationBar: Positioned(
        top: 732,
        left: 20,
        child: Container(
      width: 335,
      height: 56,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 112,
        child: Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 56, 255, 0.23999999463558197),
          offset: Offset(0,6),
          blurRadius: 19
      )],
      gradient : LinearGradient(
          begin: Alignment(-0.9762850403785706,-0.013151824474334717),
          end: Alignment(0.013151824474334717,-0.02729370817542076),
          colors: [Color.fromRGBO(23, 110, 242, 1),Color.fromRGBO(24, 110, 238, 1)]
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('Book Now', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'CircularXX',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 10),
Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 17.750200271606445,
        left: 4.750100135803223,
        child: Container(
      width: 12.048999786376953,
      height: 15,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -5.524499893188477,
        left: 0,
        child: Transform.rotate(
        angle: 90 * (math.pi / 180),
         child:Icon(Icons.dining),
      )
      ),Positioned(
        top: 0,
        left: 8.949699401855469,
        child: Transform.rotate(
        angle: 90 * (math.pi / 180),
         child:Icon(Icons.dining),
      )
      ),
        ]
      )
    )
      ),
        ]
      )
    ),

        ],
      ),
    )
      ),Positioned(
        top: 4,
        left: 0,
        child: Container(
      width: 56,
      height: 48,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Price', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(35, 35, 35, 1),
        fontFamily: 'CircularXX',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 19,
        left: 0,
        child: Text('\$199', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(44, 214, 163, 1),
        fontFamily: 'Montserrat',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
    );
          }
        }
        