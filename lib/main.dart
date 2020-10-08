import 'package:attendancesystem/Rgister_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.lightGreen,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerUsername;
  TextEditingController controllerPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 2),
            //CircleAvatar(backgroundColor: Colors.black, radius: 80),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: controllerUsername,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    hintText: "Enter Your Username",
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: controllerPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    hintText: "Enter Your password",
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(
                  "Not a user?? Register here",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
//            Container(
//              child: RawMaterialButton(
//                fillColor: Colors.teal,
//                elevation: 6,
//              onPressed: (){
//
//              }),
//            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
