

import 'package:explore_lesotho/dashboard/dashboard-nav.dart';
import 'package:explore_lesotho/pages/emailverification.dart';
import 'package:explore_lesotho/pages/register.dart';
import 'package:explore_lesotho/pages/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginPage extends StatefulWidget {

  final Function(String? email, String? password)? onSubmitted;

  const LoginPage({this.onSubmitted, Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
                            'https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Flogos%2Fold-logo.jpg?alt=media&token=e847a666-fe0b-460c-b11d-ee9ed52272ca',),
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



                    const SizedBox(height:50 ,),
                    TextField(
                      controller: _emailController,
                      obscureText: false ,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        prefixIcon: Icon(Icons.email_outlined, color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * .025),
                    TextField(
                      controller: _passwordController,
                      obscureText: true ,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.black
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 50,
                    ),
                    Row(
                   children: [

                     Positioned(
                      left: 200,
                      top: 715,
                      child: TextButton(
                          onPressed: () {  showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return  LoadingAnimationWidget.inkDrop(
                                color: Colors.blueAccent,
                                size: 50,



                              );
                            },
                          );
                          new Future.delayed(new Duration(seconds: 2), () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>RegisterPage(),
                              ),
                            );
                          },
                          );},
                          child: Text('Dont have an account?',
                              style: TextStyle(
                                color: Color(0xFF3200FF),
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ))
                      ),
                    ),
const Spacer(),
                     TextButton(
                         onPressed: () {  showDialog(
                           context: context,
                           barrierDismissible: false,
                           builder: (BuildContext context) {
                             return  LoadingAnimationWidget.inkDrop(
                               color: Colors.blueAccent,
                               size: 50,



                             );
                           },
                         );
                         new Future.delayed(new Duration(seconds: 2), () {
                           Navigator.of(context).push(
                             MaterialPageRoute(
                               builder: (context) =>ResetPassword(),
                             ),
                           );
                         },
                         );},
                         child: Text('Forgot Password?',
                             style: TextStyle(
                               color: Color(0xFF3200FF),
                               fontSize: 15,
                               fontFamily: 'Inter',
                               fontWeight: FontWeight.w400,
                               height: 0,
                             ))
                     ),
                    ]
                    ),
                    SizedBox(
                      height: screenHeight * .075,
                    ),


                    ElevatedButton(
                      onPressed: (){showDialog(
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
                            builder: (context) =>DashNav(),
                          ),
                        );
                      },
                      );},
                      child: Text("Login"),
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

class FormButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  const FormButton({this.text = '', this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: screenHeight * .02),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String? labelText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool autoFocus;
  final bool obscureText;
  const InputField(
      {this.labelText,
        this.onChanged,
        this.onSubmitted,
        this.errorText,
        this.keyboardType,
        this.textInputAction,
        this.autoFocus = false,
        this.obscureText = false,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFocus,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}