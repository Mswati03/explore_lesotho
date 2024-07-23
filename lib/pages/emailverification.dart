import 'package:email_otp/email_otp.dart';
import 'package:explore_lesotho/pages/optinput.dart';
import 'package:flutter/material.dart';

class EmailVerify extends StatefulWidget {
  

  const EmailVerify ({super.key });
  

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  TextEditingController _codeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  EmailOTP myauth = EmailOTP();
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
         const SizedBox(
            height: 60,
            child: Text(
              "Enter your Email to get Code",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.mail,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () async {
                          print("EmailInputted");
                         if (await EmailOTP.sendOTP(email: _emailController.text)) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("OTP has been sent"))); 
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>   OtpScreen(myauth: myauth,)));
                          }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("OTP failed sent")));
              }
                        },
                           
                        icon: const Icon(
                          Icons.send_rounded,
                          color: Colors.teal,
                        )),
                    hintText: "Email Address",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
              ],
            ),
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
