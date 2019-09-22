import 'package:flutter/material.dart';
import 'package:mockapp/Kolors.dart';
import 'onboarding.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expandro',
      theme: ThemeData(
          canvasColor: Color(Kolors.background),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              fontFamily: 'OpenSans'),
          primaryColor: Color(Kolors.background),
          accentColor: Color(0xFFFF6160)),
      //home: MyHomePage(title: 'HomeFeed'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expand Read"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Icon(
                  Icons.fingerprint,
                  color: Color(Kolors.accent),
                  size: 120.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Sign in with your Touch ID',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 320,
                child: Text(
                  'use your Touch ID for faster, easier access for your account.',
                  style: TextStyle(fontSize: 16.0, color: Colors.white60),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
                },
                color: Color(Kolors.accent),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
                  child: Text(
                    "Login with Email",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  children: <Widget>[
                    Text("New user? "),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Text(
                "help?",
                style: TextStyle(
                    color: Color(Kolors.accent),
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
