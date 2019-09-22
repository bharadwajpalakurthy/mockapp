import 'package:flutter/material.dart';
import 'package:mockapp/Kolors.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF2C2D3F), Color(0xFF14141B)])),
        child: Center(
          child: Container(
            width: 350.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                  child: Image.asset("assets/having_fun.png"),
                ),
                Text(
                  "There's a lot happening around you!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text(
                        "our mission is to provide whats happening near you, browse and search, for the type of events you to attend.",
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.6),
                            height: 1.6,
                            wordSpacing: 1.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 216,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 14,
                        width: 36,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            color: Colors.white10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 14,
                        width: 36,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            color: Color(Kolors.accent)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 14,
                        width: 36,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            color: Colors.white10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
