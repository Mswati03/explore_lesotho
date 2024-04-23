import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailController = TextEditingController();

  void dispose() {
    _emailController.dispose();
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
                          image :AssetImage(
                            'logo/old-logo.jpg',),
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
                      left: 10,
                      top: 445,
                      child: Text(
                        'ENTER YOUR EMAIL TO RESET PASSWORD',
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
                      controller: _emailController,
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
