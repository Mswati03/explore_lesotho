import 'package:explore_lesotho/dashboard/modules/chatbot.dart';
import 'package:explore_lesotho/pages/login-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/user.JPG'),
              ),
              const SizedBox(height: 20),
              itemProfile('User Information', 'mswat@gmail.com', CupertinoIcons.person, (){
                print("user");

              }),
              const SizedBox(height: 15),
              itemProfile('Bookings', 'See your bookings', CupertinoIcons.timer ,(){
              print("user");

              }),
              const SizedBox(height: 15),
              itemProfile(
                  'Live Chat', 'Talk to our agents', Icons.chat, (){
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return LoadingAnimationWidget.inkDrop(
                      color: Colors.blueAccent,
                      size: 50,


                    );
                  },
                );
                new Future.delayed(new Duration(seconds: 1), () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LiveSupportPage(),
                    ),
                  );
                },
                );

              }),
              const SizedBox(height: 12),
              itemProfile('Log Out', 'Securely log off the app',
                  CupertinoIcons.lock_fill, (){
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return LoadingAnimationWidget.inkDrop(
                          color: Colors.blueAccent,
                          size: 50,


                        );
                      },
                    );
                    new Future.delayed(new Duration(seconds: 1), () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    );

                  }),
              const SizedBox(height: 20,),




            ]
        ),


      ),
    );
  }


}
itemProfile(String title, String subtitle, IconData iconData,onTap ) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.green.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10
          )
        ]
    ),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
      tileColor: Colors.white,
      onTap: onTap,

    ),
  );

}