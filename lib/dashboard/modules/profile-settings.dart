import 'package:explore_lesotho/dashboard/modules/chatbot.dart';
import 'package:explore_lesotho/pages/login-page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
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
              itemProfile('Email ID', TextField(), CupertinoIcons.person, (){
                print("user");

              }),
              const SizedBox(height: 15),
              itemProfile('Phone Number', TextField(), CupertinoIcons.phone ,(){
              print("user");

              }),
              const SizedBox(height: 15),
              itemProfile(
                  'Name', TextField(), Icons.person, (){
                
               

              }),
              const SizedBox(height: 12),
              itemProfile('Passoword', TextField(),
                  CupertinoIcons.lock_fill, () {
                    
                  }),
              const SizedBox(height: 20,),




            ]
        ),


      ),
    );
  }


}
itemProfile(String title, TextField , IconData iconData,onTap ) {
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
      subtitle: TextField,
      leading: Icon(iconData),
      trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
      tileColor: Colors.white,
      onTap: onTap,

    ),
  );

}