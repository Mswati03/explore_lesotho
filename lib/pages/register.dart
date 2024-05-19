

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explore_lesotho/pages/emailverification.dart';
import 'package:explore_lesotho/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:email_otp/email_otp.dart';

import 'login-page.dart';

class RegisterPage extends StatefulWidget {

  final Function(String? email, String? password)? onSubmitted;

  const RegisterPage({this.onSubmitted, Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
   FirebaseFirestore db = FirebaseFirestore.instance;
   bool _passwordVisible = true;
   bool _confirmpasswordVisible = true;
  @override

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
@override
  void initState() {
    _passwordVisible = false;
    _confirmpasswordVisible=false;
  }
  
  @override
  Widget build(BuildContext context) {
    var acs = ActionCodeSettings(
    // URL you want to redirect back to. The domain (www.example.com) for this
    // URL must be whitelisted in the Firebase Console.
    url: 'https://www.example.com/finishSignUp?cartId=1234',
    // This must be true
    handleCodeInApp: true,
    iOSBundleId: 'com.example.ios',
    androidPackageName: 'com.example.android',
    // installIfNotAvailable
    androidInstallApp: true,
    // minimumVersion
    androidMinimumVersion: '12');
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
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock, color: Colors.black
                  ),
                  suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
                ),
              ),
              SizedBox(height: screenHeight * .025),
              TextField(
                controller: _confirmpasswordController,
                obscureText: !_confirmpasswordVisible,
                decoration: InputDecoration(
                  hintText: "Password Confirmation",
                  prefixIcon: Icon(Icons.lock, color: Colors.black
                  ),
                  suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _confirmpasswordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _confirmpasswordVisible = !_confirmpasswordVisible;
               });
             },
            ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Positioned(
                left: 200,
                top: 715,
                child: TextButton(
                   onPressed: () async {  

                        
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
                         builder: (context) =>LoginPage(),
                       ),
                     );
                   },
                   );},
                    child: Text('Already have an account?',
                    style: TextStyle(
                      color: Color(0xFF3200FF),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ))
                ),
              ),
              SizedBox(
                height: screenHeight * .075,
              ),


              ElevatedButton(
                onPressed: () async {

                  FocusScope.of(context).unfocus();
                String id = _emailController.text.trim();
                String password = _passwordController.text.trim();
                  if(_passwordController.text!=_confirmpasswordController.text)
                        {
                            showDialog(context: context,
                             builder: (BuildContext context) => AlertDialog(
          title: const Text('Password Mismatch'),
          content: const Text('Passwords do not match'),
          actions: <Widget>[
            TextButton(
              onPressed: () =>  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ),
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Try Again'),
            ),
          ],
                ),);
                        }
                    else{
                    try {
                        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                         email: _emailController.text,
                        password: _passwordController.text,
                       );
                       db.collection("users").doc(userCredential.user?.uid).set({"email": id, 
                       "password":password});

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



     Future.delayed(new Duration(seconds: 2), () {
    Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) =>EmailVerify(),
    ),
    );
    },
    );

                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Password too weak"),
                ));
                           } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Email is already in use"),
                ));
                          }
                          } catch (e) {
                           print(e);
                          }
                    
                    
                    }
                      },

                child: Text('Register'),
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

