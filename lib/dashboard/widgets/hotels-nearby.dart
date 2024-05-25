import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explore_lesotho/details/details_page.dart';
import 'package:explore_lesotho/details/product-display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance.collection('hotels').get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Or any other loading indicator
            }

            if (snapshot.data!.docs.isEmpty) {
              return Text('No documents found');
            }

            return Row(
               children: snapshot.data!.docs.asMap().entries.map((entry) {
                final index = entry.key;
                final document = entry.value;
                Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                Widget hotelWidget=Padding(

                  padding: EdgeInsets.only(right: 20), // Adjust spacing here
                  child: Positioned(
                    top: 0,
                    left: 0,
                    child: Column(
                      children: [
                        Container(
                          width: 145,
                          height: 218,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 145,
                                  height: 218,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(data['img']),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 145,
                                  height: 218,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.5299999713897705)],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 150,
                                child: Container(
                                  width: 125,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data['name'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Maseru,Lesotho',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            Text(
                                              '⭐️ 4.8',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 0),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                 // Check if it's the 5th document
                if (index == 0) {
                  return GestureDetector(
                    onTap: () {
                      print("1");
                      // Navigate to detailed page
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
                          new Future.delayed(new Duration(seconds: 2), () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SantoriniIslandPage(),
                              ),
                            );
                          },
                          );
                          },
                  
                    child: hotelWidget,
                  );
                }

                return hotelWidget;
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
