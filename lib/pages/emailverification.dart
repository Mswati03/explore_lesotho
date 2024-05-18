import 'package:flutter/material.dart';

class EmailVerify extends StatefulWidget {
  

  const EmailVerify ({super.key });

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  TextEditingController _codeController = TextEditingController();
  var email;

  void dispose() {
    _codeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  
    return Material(
      child: SingleChildScrollView(
      child: Column(
      children: [
      Container(
      width: 430,
      height: 932,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
      child:  Column(
      children: [

      Positioned(
      left: 0,
      top: -8,
      child: Transform(
        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(color: Color(0xFF3EB534)),
        ),
      ),
     ),
          Center(
           child:  Container(

                   child:    Image(
                     width: 368,
                      height: 198,
                      image :NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Flogos%2Fold-logo.jpg?alt=media&token=e847a666-fe0b-460c-b11d-ee9ed52272ca'
                                  ,),
                                filterQuality: FilterQuality.none,
                                fit: BoxFit.none,

                                  ),
                 ),
    ),
                   const SizedBox(height:20 ,),
                  Positioned(
                        left: 42,
                        top: 355,
                        child: SizedBox(
                               width: 346,
                               height: 36,
                              child: Center(
                          child: Text(
                                        'Endless discoveries in the mountain kingdom',
                               style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                     fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                     height: 0,
                                    ),
                       ),
                              ),


                   ),
                 ),
        const SizedBox(height: 20,),
        Positioned(
          left: 21,
          top: 447,
          child: Text(
            'WE HAVE SENT A CODE TO YOUR EMAIL\n               CHECK YOUR INBOX\n             AND ENTER THE CODE',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),

        const SizedBox(height:50 ,),
        TextField(
          controller: _codeController,
          obscureText: false ,
          decoration: InputDecoration(
            hintText: "Verification Code",
            prefixIcon: Icon(Icons.security, color: Colors.black
            ),
          ),
        ),
        const SizedBox(height:50 ,),
        ElevatedButton(
          onPressed: (){},
          child: Text("Verify"),
        ),

      ],
    ),
    ),
    ),
      ],
    ),
    ),
    );
  }
}
