import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
//import 'package:flare_flutter/flare.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlatButton(
          child: SizedBox(
            child: FlareActor(
              'assets/NewFile5.flr',
              animation: 'Untitled',
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BackButton()));
          },
          )
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlatButton(
          child: SizedBox(
            child: FlareActor(
              'assets/NewFile3.flr',
              animation: 'Untitled',
            ),
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
          )
      ),
    );
  }
}
