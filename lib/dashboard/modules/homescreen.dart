import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   return  SingleChildScrollView(
          child :Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.lightBlue,
                    Colors.white70,


                  ],
                )
            ),

           // height: 2,
            padding: EdgeInsets.only(top:10),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  //mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    const SizedBox(height:20,),
                    Container(
                      margin: EdgeInsetsDirectional.all(10),
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child:Text("Current Location",style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Inter"
                    ),
                    ),
                    ),
                    const SizedBox(height: 2,),
                    Text("Maseru,Lesotho",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Inter"
                    ),
                    ),
                   // const Spacer(),

                    Icon(Icons.notifications)
                  ],
                )
              ],
            ),

          ) ,



    );
  }
}
