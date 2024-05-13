import 'package:explore_lesotho/dashboard/widgets/hotels-nearby.dart';
import 'package:explore_lesotho/dashboard/widgets/lodges.dart';
import 'package:explore_lesotho/dashboard/widgets/resorts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/guest-houses-nearby.dart';
//import '../widgets/hotelsnearby.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   return  SingleChildScrollView(
          child :Column(
          children:[
            Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.lightGreen,
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
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    ),

                    const SizedBox(height: 2,),
                    Text("Maseru,Lesotho",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                   // const Spacer(),
                  ],
                ),
                    IconButton(
                        icon :Icon(Icons.notifications),
                      onPressed: () {  },
                    )

              ],
            ),

          ) ,
            const SizedBox(height: 20,),
            Row(

            children:[
              const SizedBox(width: 25),
               Text("Guest Houses Nearby",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              fontSize: 15,
            ),),
            ],
            ),
            GHNearby(),
const SizedBox(height: 20,),
            Row(

              children:[
                const SizedBox(width: 25),
                Text("Hotels",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                    fontSize: 15,
                  ),),
              ],
            ),
            Hotels(),
            const SizedBox(height: 20,),
            Row(

              children:[
                const SizedBox(width: 25),
                Text("Lodges",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                    fontSize: 15,
                  ),),
              ],
            ),
            Lodges(),
            const SizedBox(height: 20,),
            Row(

              children:[
                const SizedBox(width: 25),
                Text("Amazing Resorts",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                    fontSize: 15,
                  ),),
              ],
            ),
            Resorts(),
]
          ),
    );
  }
}
