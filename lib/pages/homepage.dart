import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stroke_text/stroke_text.dart';

class HomePage extends StatelessWidget
{
  const HomePage({
    super.key
    });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
                     appBar: AppBar(
                      title: const Center(
                      child :Text("Explore Lesotho",),

                      ),
                       backgroundColor: Colors.transparent,
                    ),
                    body: Stack(
        children: [
          Container(

                    height: double.infinity,
                    width: double.infinity,
                    decoration : BoxDecoration(
                    image: DecorationImage(
                        image : AssetImage(
              'places/Sani+Pass.jpg',),
              fit: BoxFit.cover
          ),
          ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),

          Center(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(

              children: [

                const SizedBox(height:20,),
                Container(

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2000000000000.0),
                    child :Image(
                      image :AssetImage(
                          'logo/explore_logo.png',),
                        filterQuality: FilterQuality.none,
                        fit: BoxFit.none,
                        height: 250,
                    ),

                  ),
                ),
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      "Explore Lesotho \n   only with us",
                      style: TextStyle(
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.black,
                      ),
                    ),
                    // Solid text as fill.
                    const Text(
                      "Explore Lesotho \n   only with us",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

            Stack(
              children: <Widget>[
                Text(
                  "All the hotels, rooms and resorts in the \n Kingdom of Lesotho are here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                   fontSize:20,
                   foreground: Paint()
                     ..style = PaintingStyle.stroke
                     ..strokeWidth = 3
                     ..color = Colors.black,
                 ),
                ),

                Text(
                  "All the hotels, rooms and resorts in the \n Kingdom of Lesotho are here",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,

                  ),
                ),
                ],
            ),
                const SizedBox(height:60,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                      showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: const Text("Loading Soon"),
                  actions: <Widget>[

                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),
                      ),
                    ),
                  ],
                ),
              );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Color(0xEFEAEA),
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text("Start Booking",
                      style: TextStyle(
                        color: Colors.black
                      ),),
                    ),

                  ),
                ),

              ],
            ),
          ),
        ),
    ],
      ),
      bottomNavigationBar:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children :[
        Text(
        "EXPLORE LESOTHO © 2024",
            style: TextStyle(
              fontSize: 10,
            ),
      ),
      ],
      ),

      );

  }


}
