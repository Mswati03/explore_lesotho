import 'package:explore_lesotho/dashboard/dashboard-nav.dart';
import 'package:explore_lesotho/dashboard/modules/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LiveSupportPage extends StatefulWidget {
  const LiveSupportPage({super.key});

  @override
  State<LiveSupportPage> createState() => _LiveSupportPageState();
}

class _LiveSupportPageState extends State<LiveSupportPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Lesotho Live Chat'),
          backgroundColor: const Color(0XFFF7931E),
          elevation: 0,
          leading: IconButton(
            icon: Icon (Icons.keyboard_double_arrow_left,),
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
    builder: (context) => DashNav(),
    ),
    );
    },
    );
    },

          ),
        ),
        body: Tawk(
          directChatLink: 'https://tawk.to/chat/6644cc68981b6c564770bee4/1htubsv3e',
          visitor: TawkVisitor(
            name: 'Ayoub AMINE',
            email: 'ayoubamine2a@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
