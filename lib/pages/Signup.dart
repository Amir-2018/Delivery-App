import 'package:flutter/material.dart';
import 'package:todolist/components/my_button.dart';
import 'package:todolist/components/my_textfield_input.dart';
import 'package:todolist/pages/login_page.dart';

class Signup extends StatelessWidget {
  Signup({
    super.key,
  });
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
          // Adding a back arrow button
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous page
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SafeArea(
            child: Column(children: [
              const SizedBox(height: 50),
              // logo
              ClipOval(
                child: Image.asset(
                  'lib/images/login.jpg',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              const SizedBox(height: 25.0),

              // welcome back,you've be missed
              Text(
                "Login to your account",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 50.0),

              //username textfield
              My_text_field_input(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              My_text_field_input(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              My_text_field_input(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              //password textfield
              const SizedBox(height: 25),

              My_text_field_input(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // forgot password
              // signin button
              MyButton(
                imageTitle: 'Signup',
                onPressed: () {
                  Signup(); // Replace Signup with the function or code you want to execute
                },
              ), // or continue with
              // google + apple sign in buttons

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Text(
                  'I have an account',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              // Not member ? sign in now
            ]),
          ),
        ));
  }
}
