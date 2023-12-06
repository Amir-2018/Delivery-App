import 'package:flutter/material.dart';
import 'package:todolist/components/my_button.dart';
import 'package:todolist/pages/login_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey[300],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('lib/images/foodhome.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
                  child: MyButton(
                    imageTitle: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
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
