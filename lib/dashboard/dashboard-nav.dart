import 'package:explore_lesotho/dashboard/modules/chatbot.dart';
import 'package:explore_lesotho/dashboard/modules/homescreen.dart';
import 'package:explore_lesotho/dashboard/modules/profile.dart';
import 'package:explore_lesotho/dashboard/modules/weather.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashNav extends StatefulWidget {
  const DashNav({super.key});


  @override
  State<DashNav> createState() => _DashNavState();
}

class _DashNavState extends State<DashNav> {

  List<String> barTexts =
  [
    "Home",
    "Weather",
    "ChatBot",
    "Profile",

  ];


  List<IconData> navigationIcons = [
   Icons.home_outlined,
    Icons.cloud_outlined,
    FontAwesomeIcons.rocketchat,
    FontAwesomeIcons.user,
  ];

  double screenHeight=0;
  double screenWidth=0;

  int currentIndex=0;

  Color primary= const Color(0xFF0000FF);
  @override
  Widget build(BuildContext context) {
    screenHeight= MediaQuery.of(context).size.height;
    screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
        body: IndexedStack(
        index: currentIndex,
        children: const [
        HomeScreen(),
          WeatherPage(),
        ChatBotPage(),
        Profile(),
    ],
    ),
    bottomNavigationBar: Container(
                        margin: const EdgeInsets.only(
                               left:12,
                               right: 12,
                               bottom: 24,
                        ),
                    decoration: const BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                    BoxShadow(
                              color: Colors.blue,
                              blurRadius: 10,
                              offset: Offset(2,2)
                              )
                              ]
                              ),
            height: 70,
      child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

              children: [
          for(int i=0; i<navigationIcons.length;i++)...<Expanded>{
              Expanded(
              child: GestureDetector(
              onTap: (){
                        setState(() {
                        currentIndex=i;
                        });
                      },
              child: Container(
                    height: screenHeight,
                    width: screenWidth,
                    child: Center(

                          child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                     children:[
                                Icon(
                                  navigationIcons[i],
                                  color: i == currentIndex ?  primary :Colors.black,
                                  size: i == currentIndex ? 30:26,
                                  ),
                       Text(
                         barTexts[i],
                         style: TextStyle(
                           fontSize: 12,
                         ),
                       ),
                       i == currentIndex ? Container(
                    margin: EdgeInsets.only(top: 6),
                    height: 3,
                         width: 24,
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(40)),

    ),

    ): const SizedBox(),
    ],
    ),
    ),
    ))
    )
    }
    ],
    ),

    ),
    ),
    );
  }
}
