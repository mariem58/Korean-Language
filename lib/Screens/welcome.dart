import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/Screens/home_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xff2d446b), // Background color for the whole screen
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5), // Padding around the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff1a2b47), // Background color for the circle
                  ),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("assets/images/backgrounds/logo.png"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to Learn Korean!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your journey to mastering Korean starts here.",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>HomePage()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1a2b47),
                    minimumSize: Size(300, 50), // Correct way to set button size
                  ),
                  child: Text(
                    'Start Learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
