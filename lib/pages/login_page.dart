import 'package:flutter/material.dart';
import 'package:todolist/components/my_button.dart';
import 'package:todolist/components/my_textfield_input.dart';
import 'package:todolist/components/square.dart';
import 'package:todolist/pages/List_Foods.dart';
import 'package:todolist/pages/Signup.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Text Editing Controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
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
              // const Icon(
              //   Icons.lock,
              //   size: 100,
              // ),
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
                controller: widget.usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              //password textfield
              const SizedBox(height: 25),

              My_text_field_input(
                controller: widget.passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              MyButton(
                  imageTitle: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => List_Foods()),
                    );
                  }),

              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 10.0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            'Create account',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or Continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                          )),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // Google button
                children: [
                  Square(imagePath: 'lib/images/google.png'),
                  SizedBox(width: 25),
                  Square(imagePath: 'lib/images/apple-logo.png')
                ],
                // Apple button
              )
              // Not member ? sign in now
            ]),
          ),
        ));
  }
}
