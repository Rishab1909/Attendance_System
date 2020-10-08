import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Future<void> _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2025));
    if (picked != null) {
      print(picked);
    }
  }

  TextEditingController controllerUsername;
  TextEditingController controllerpassword;
  TextEditingController controllerDOB;
  TextEditingController controllerClass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(flex: 1),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: controllerUsername,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white70,
                      hintText: "Username"),
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: controllerpassword,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white70,
                      hintText: "Password"),
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: controllerClass,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white70,
                      hintText: "Class"),
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: RawMaterialButton(
                child: Text(
                  "Select DOB",
                  style: GoogleFonts.poppins(color: Colors.black38),
                ),
                onPressed: () {
                  _selectDate(context);
                },
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
