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
                const Spacer(),
                Container(

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2000000000000.0),
                    child :Image(
                      image :AssetImage(
                          'logo/explore_logo.png',),
                        filterQuality: FilterQuality.none,
                        fit: BoxFit.none,

                    ),

                  ),
                ),

                const Text(
                  "Explore Lesotho \nonly with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                   fontFamily: 'Inter-black',
                  ),
                ),
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Greetings, planet!',
                      style: TextStyle(
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.black,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Greetings, planet!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                 Text(
                  "All your vacations destinations are here,\nenjoy your",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                   textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,

                  ),
                  ),
                ),

                const Spacer(),
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
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text("Get Started"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    ],
      ),
    );
  }


}
