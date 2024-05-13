import 'dart:ui';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:explore_lesotho/pages/register.dart';
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
                        image : NetworkImage(
              'https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Flogos%2FSani%2BPass.jpg?alt=media&token=9940f1a2-737c-4916-8a94-32e98ec2e464',),
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
                      image :NetworkImage("https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Flogos%2Fexplore_logo.png?alt=media&token=f6a58ff5-b15b-4dd4-8108-2f66e841d207"),
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
                const SizedBox(height: 30),

            Stack(
              children: <Widget>[
                Text(
                  "All the hotels, rooms and resorts in the \n Kingdom of Lesotho are here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                   fontSize:20,
                   foreground: Paint()
                     ..style = PaintingStyle.fill
                     ..strokeWidth = 2
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
                  padding: const EdgeInsets.only(bottom: 0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return  LoadingAnimationWidget.inkDrop(
                              color: Colors.blueAccent,
                              size: 50,



                            );
                          },
                        );
                        new Future.delayed(new Duration(seconds: 1), () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
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
