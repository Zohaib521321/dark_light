import 'package:flutter/material.dart';
class DarkLightModeButton extends StatefulWidget {    //
  @override
  _DarkLightModeButtonState createState() => _DarkLightModeButtonState();
}

class _DarkLightModeButtonState extends State<DarkLightModeButton> {
  bool isDarkMode = false;//boolean variable
  void toggleDarkMode() {   //Function for Toggle
    setState(() {   //for rebuild widget
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),    //turnary operatory mean same as if else
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark/Light Mode'),  //appbar title
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  //for centering
            children: [
              ElevatedButton(         //dark mode button
                onPressed: () {
                  toggleDarkMode();   //Function call here
                },
                child: Text('Toggle Dark Mode'),
              ),
              SizedBox(height: 20),  //for space
              ElevatedButton(       //button
                onPressed: () {
                  setState(() {
                    isDarkMode = false;    //set dark mode to false
                  });
                },
                style: ElevatedButton.styleFrom(   //style
                  backgroundColor: Colors.blue,
                ),
                child: Text('Light Mode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {   //main function for running app
  runApp(DarkLightModeButton());
}


