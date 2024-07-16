import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explore_lesotho/dashboard/dashboard-nav.dart';
import 'package:explore_lesotho/details/components/bookings/bookings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_paypal_checkout/flutter_paypal_checkout.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:uuid/uuid.dart';
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class SantoriniIslandPage extends StatefulWidget {

  @override
  State<SantoriniIslandPage> createState() => _SantoriniIslandPageState();
}

class _SantoriniIslandPageState extends State<SantoriniIslandPage> {
  
   DateTime selectedDate = DateTime.now();
   bool dateSelected = false;
   //bool dateSelected = false;
  String dateResponse = '';
  int pricePerPerson = 1000;
  int totalPrice = 1000;
  int _selected = 0;
  int a=1500;
  List<String> imageUrls = [
    "https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Fhotels%2FAvani%20Lesotho%2F130896336.jpg?alt=media&token=c66ade5b-3e60-49e4-9ace-2f8a72f6a6aa"
    "https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Fhotels%2FAvani%20Lesotho%2F404.jpeg?alt=media&token=519a642a-b3ed-450a-bc7c-a06524417e53",
    "https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Fhotels%2FAvani%20Lesotho%2F420ab49c-ezgif.com-webp-to-jpg-converter.jpg?alt=media&token=a39240ff-1e33-4c1e-83bb-a1639834866c",
    "https://firebasestorage.googleapis.com/v0/b/explore-lesotho.appspot.com/o/images%2Fhotels%2FAvani%20Lesotho%2FCM_Vd-Dd_400x400.jpg?alt=media&token=7f6a1d32-f3ea-4003-b99e-81abae968d83",

  ];


  List<DateTime?> _rangeDatePickerWithActionButtonsWithValue = [
    DateTime.now(),
    DateTime.now().add(const Duration(days: 5)),
  ];
   List<DateTime?> _dialogCalendarPickerValue = [
    DateTime(2021, 8, 10),
    DateTime(2021, 8, 13),
  ];
 @override
  void initState() {
    super.initState();
   // fetchImageUrls();
  }

  Widget _icon(int index, {required String text, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkResponse(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: _selected == index ? Colors.greenAccent : null,
            ),
            Text(
              text,
              style: TextStyle(color: _selected == index ? Colors.greenAccent : null),
            ),
          ],
        ),
        onTap: () => setState(() {
          _selected = index;
        }),
      ),
    );
  }
  Future<void> _saveBookingDetails(String dateRange, int amount, String roomType) async {
    final bookingId = Uuid().v4();

    await FirebaseFirestore.instance.collection('bookings').doc(bookingId).set({
      'bookingId': bookingId,
      'dateRange': dateRange,
      'amount': amount,
      'roomType': roomType,
      'timestamp': FieldValue.serverTimestamp(),
    });

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BookingConfirmationPage(
          bookingId: bookingId,
          dateRange: dateRange,
          amount: amount,
          roomType: roomType,
        ),
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {

    String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
              .map((v) => v.toString().replaceAll('00:00:00.000', ''))
              .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0];
        final endDate = values.length > 1 ? values[1] : null;
        if (startDate != null && endDate != null) {
          final duration = endDate.difference(startDate).inDays + 1; // Include the start date
          
          totalPrice = duration * pricePerPerson;
          a = totalPrice + 500;
        }
        final startText = startDate.toString().replaceAll('00:00:00.000', '');
        final endText = endDate != null
            ? endDate.toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startText to $endText';
      } else {
        return 'null';
      }
    }

    return valueText;
  }


    Widget _buildCalendarWithActionButtons() {
    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarType: CalendarDatePicker2Type.range,
      disableModePicker: true,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        const Text('Date Picker With Action Buttons'),
        CalendarDatePicker2WithActionButtons(
          config: config,
          value: _rangeDatePickerWithActionButtonsWithValue,
          onValueChanged: (dates) => setState(
              () => _rangeDatePickerWithActionButtonsWithValue = dates),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Selection(s):  '),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                _getValueText(
                  config.calendarType,

                  _rangeDatePickerWithActionButtonsWithValue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
      ],
    );
  }
  
    
   
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: IconButton(icon :Icon(Icons.arrow_back), color: Colors.black, onPressed: () {  
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>DashNav(),
                              ),
                            );
                        },),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: Icon(Icons.menu, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: imageUrls.map((url) {
            return Container(
              margin: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            );
          }).toList(),
        ),
          
        ),
      
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Avani Lesotho',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Center(
            child: ElevatedButton(
            onPressed: () async {
              const dayTextStyle =
        TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
    final weekendTextStyle =
        TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w600);
    final anniversaryTextStyle = TextStyle(
      color: Colors.red[400],
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline,
    );
              final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarViewScrollPhysics: const NeverScrollableScrollPhysics(),
      dayTextStyle: dayTextStyle,
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: Colors.purple[800],
      closeDialogOnCancelTapped: true,
      firstDayOfWeek: 1,
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      centerAlignModePicker: true,
      customModePickerIcon: const SizedBox(),
      selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
      dayTextStylePredicate: ({required date}) {
        TextStyle? textStyle;
        if (date.weekday == DateTime.saturday ||
            date.weekday == DateTime.sunday) {
          textStyle = weekendTextStyle;
        }
        if (DateUtils.isSameDay(date, DateTime(2021, 1, 25))) {
          textStyle = anniversaryTextStyle;
        }
        return textStyle;
      },
      dayBuilder: ({
        required date,
        textStyle,
        decoration,
        isSelected,
        isDisabled,
        isToday,
      }) {
        Widget? dayWidget;
        if (date.day % 3 == 0 && date.day % 9 != 0) {
          dayWidget = Container(
            decoration: decoration,
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Text(
                    MaterialLocalizations.of(context).formatDecimal(date.day),
                    style: textStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 27.5),
                    child: Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isSelected == true
                            ? Colors.white
                            : Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return dayWidget;
      },
      yearBuilder: ({
        required year,
        decoration,
        isCurrentYear,
        isDisabled,
        isSelected,
        textStyle,
      }) {
        return Center(
          child: Container(
            decoration: decoration,
            height: 36,
            width: 72,
            child: Center(
              child: Semantics(
                selected: isSelected,
                button: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      year.toString(),
                      style: textStyle,
                    ),
                    if (isCurrentYear == true)
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
              final values = await showCalendarDatePicker2Dialog(
                context: context,
                config: config,
                dialogSize: const Size(325, 400),
                borderRadius: BorderRadius.circular(15),
                value: _dialogCalendarPickerValue,
                dialogBackgroundColor: Colors.white,
              );
              if (values != null) {
                // ignore: avoid_print
                print(_getValueText(
                  config.calendarType,
                  values,
                ));
                
                setState(() {
                  _dialogCalendarPickerValue = values;
                   dateSelected = true;
                  dateResponse = _getValueText(
                    config.calendarType,
                    values,
                  );
                  //dateResponse = values;
                });
              }
            },
            child: const Text('Select Dates'),
          ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InfoTile(
                            icon: Icons.calendar_today,
                            title: "Date" ,
                            subtitle: dateSelected ? dateResponse: "Select Date Above" ,
                          ),
                          InfoTile(
                            icon: Icons.star,
                            title: 'RATING',
                            subtitle: '4.8 out of 5',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Overview',
                      style: TextStyle(
                        color: Color(0xFF2CCF98),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Maseru’s swankiest hotel is also the most exclusive, perched high on a hilltop overlooking the city. Live it up here, whether rolling dice at the casino or kicking off the weekend with sunset drinks by the pool',
                      style: TextStyle(
                        color: Color(0xFF89807A),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                     Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(0, text: "Single Room", icon: Icons.bedroom_child),
          const SizedBox(width: 10),
          _icon(1, text: "Double Room", icon: Icons.bedroom_parent),
        ],
      ),
    ),
     SizedBox(height: 8),
                    Text(
                      '-158 rooms and suites\n-Pool \n-Gym \n-sauna spa\n-Maseru’s only casino \n-30-minute drive from Moshoeshoe I International Airport \n -Two hours’ drive from Bloemfontein',
                      style: TextStyle(
                        color: Color(0xFF89807A),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                             _selected == 0 ?'M$totalPrice ' : 'M$a',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '/person',
                              style: TextStyle(
                                color: Color(0xFF89807A),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          backgroundColor: Color(0xFF1EC089),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                         onPressed: () async {
                          print("PRESSED");
                            sendPROPERMAIL();
              await  showModalBottomSheet(
            context: context,
            builder: (builder){
              return Container(
                height: 350.0,
                color: Colors.transparent, //could change this to Color(0xFF737373), 
                           //so you don't have to change MaterialApp canvasColor
                child:Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    child:  Center(

                    child :Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text(
              'Booking Confirmation ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            /*Text(
              'Booking ID: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),*/
            SizedBox(height: 16),
            Text(
              dateSelected == false ? 'Dates : Not Selected' :'Dates: $dateResponse',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
               _selected == 0 ?'Amount: M$totalPrice ' : 'Amount : M$a',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              _selected == 0 ? 'Room Type: Single': 'Room Type: Double',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(

              ),
           child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          backgroundColor: Color(0xFF1EC089),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
              onPressed: () {
               
                 submitBooking(context, dateSelected, dateResponse,_selected, totalPrice, a);
                
                //Navigator.pop(context);
              },
              child: Text('Book'),
            ),
            ),
          ],
        ),
                ),
                ),
              );
            }
        );
            },
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
  
}


class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  InfoTile({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF89807A),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> submitBooking(BuildContext context, bool dateSelected, String dateResponse, int _selected, int totalPrice, int a) async {
  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) async {
    if (user != null) {
      print(user.uid);
        try {
   if (user != null) {
    for (final providerProfile in user.providerData) {
        // ID of the provider (google.com, apple.com, etc.)
        final provider = providerProfile.providerId;

        // UID specific to the provider
        final uid = providerProfile.uid;

        // Name, email address, and profile photo URL
        final name = providerProfile.displayName;
        final emailAddress = providerProfile.email;
        final profilePhoto = providerProfile.photoURL;

print(emailAddress);
    await FirebaseFirestore.instance.collection('users').doc(user.uid).collection('bookings').add({
      'dateSelected': dateSelected ? dateResponse.toString() : 'Not Selected',
      'totalPrice': _selected == 0 ? 'M$totalPrice' : 'M$a',
      'roomType': _selected == 0 ? 'Single' : 'Double',
      'timestamp': FieldValue.serverTimestamp(),
    });
   
    showDialog(
             context: context,
             builder: (_) {
               return AlertDialog(
                 title: const Text('Booking Done'),
                 content: const Text('Booking Receipt has been sent to your email'),
                 actions: [
                   TextButton(
                     onPressed: Navigator.of(context).pop,
                     child: const Text('Ok'),
                   ),
                 ],
               );
             },
           );
      }
}  //Navigator.pop(context);
  } catch (e) {
    showDialog(
             context: context,
             builder: (_) {
               return AlertDialog(
                 title: const Text('Error'),
                 content: const Text('Booking Failed'),
                 actions: [
                   TextButton(
                     onPressed: Navigator.of(context).pop,
                     child: const Text('Ok'),
                   ),
                 ],
               );
             },
           );
    print('Error submitting booking: $e');
    // Handle errors appropriately in your app
  }
}

    });
  }
  
   Future<void> sendPROPERMAIL() async {
    print("email clicked");
    final Email email = Email(
      body: "HELLO",
      subject: "GREETINGS",
      recipients: ["mswati2198@gmail.com"],
      //attachmentPaths: attachments,
      //isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
      print("sent");
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    //if (!mounted) return;

    
  }
