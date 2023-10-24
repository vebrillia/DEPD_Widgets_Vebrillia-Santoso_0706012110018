import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _bookingKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [
              TextFormField(
                controller: ctrlName,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_pin)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Full Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: ctrlEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: ctrlPhone,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone_android),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  final phoneRegex =
                      r'^\d{9,13}$'; // Assumes a 10-digit phone number

                  if (!RegExp(phoneRegex).hasMatch(value)) {
                    return 'Invalid phone number';
                  }
                  // Add phone number validation logic if needed
                  return null;
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: ctrlCity,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  if (_bookingKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Booking Confirmation'),
                          content: Text(
                            '''
Name: ${ctrlName.text}
Email: ${ctrlEmail.text}
Phone: ${ctrlPhone.text}
City: ${ctrlCity.text}
                                  
                                  ''',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Close the dialog
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                icon: Icon(Icons.save),
                label: Text("Book Now"),
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    backgroundColor: Colors.pink[300],
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
