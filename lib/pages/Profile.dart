import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  void _showContactOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Options'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {
                  // Add functionality for Email
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Image.asset('assets/whatsapp_icon.png',
                    width: 30,
                    height: 30), // Replace with your WhatsApp icon asset
                onPressed: () {
                  // Add functionality for WhatsApp
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    'lib/images/profile.jpg'), // Replace with your image asset
              ),
              SizedBox(height: 20),
              Text(
                'Amir Maalaoui',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '24 years old',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Fusce vel velit nec felis bibendum auctor. Sed vitae justo '
                  'non dolor laoreet dapibus. Integer nec elit ac justo lacinia '
                  'ullamcorper. Nulla facilisi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _showContactOptions(context);
                  },
                  child: Text('Contact Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
