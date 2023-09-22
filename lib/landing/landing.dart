import 'package:cred_assignment/landing/category_button.dart';
import 'package:cred_assignment/landing/landing_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  String name = "", description = "";

  @override
  Widget build(BuildContext context) {
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        name = prefs.getString("name") ?? "CRED mint";
        description = prefs.getString("description") ?? "grow your savings. 3x faster";
      });
      // greetingsMessageState.updateMessage(name, description);
    });

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/cred_logo.png", height: 120, width: 120,),
              SizedBox(height: 30,),
              LandingText(header: name, footer: description),
              SizedBox(height: 30,),
              CategoryButton()
            ],
          ),
        )
    );
  }
}