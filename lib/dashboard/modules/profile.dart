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
              itemProfile('Name', 'Ahad Hashmi', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('Phone', '03107085816', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile(
                  'Address', 'abc address, xyz city', CupertinoIcons.location),
              const SizedBox(height: 10),
              itemProfile('Email', 'ahadhashmideveloper@gmail.com',
                  CupertinoIcons.mail),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Edit Profile')
                ),
              ),
              const SizedBox(height: 20,),
              FloatingActionButton.extended(
                backgroundColor: const Color(0xff19da03),
                foregroundColor: Colors.black,
                elevation: 0,
                onPressed: () {
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
                },
                // Respond to button press
                label: Text('Live Chat'),
                icon: Icon(Icons.headset_mic_outlined),


              ),
              const SizedBox(height: 20,),
              FloatingActionButton.extended(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                elevation: 0,
                onPressed: () {
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
                },
                // Respond to button press
                label: Text('Log Out'),
                icon: Icon(Icons.logout_outlined),


              ),
            ]
        ),


      ),
    );
  }


}
itemProfile(String title, String subtitle, IconData iconData) {
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
    ),
  );

}