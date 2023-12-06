import 'package:flutter/material.dart';
import 'package:todolist/pages/ItemDetails.dart';
import 'package:todolist/pages/Item_Food.dart';
import 'package:todolist/pages/Profile.dart';
import 'package:todolist/pages/login_page.dart';

class List_Foods extends StatelessWidget {
  const List_Foods({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Container(
                  child: Image.asset(
                    'lib/images/profile.jpg', // Replace with the path to your image
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                )),
            ListTile(
              title: Text('Food List'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => List_Foods()),
                );
              },
            ),
            ListTile(
              title: Text('Command LIst'),
              onTap: () {
                Navigator.pop(context);
                // Add your logout logic here
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                ); // Add your logout logic here
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );

                // Add your logout logic here
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            Item_Food(
              title: 'title',
              subtitle: '1200',
              link: 'lib/images/food3.jpg',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemDetails()),
                );
              },
            ),
            Item_Food(
              title: 'title',
              subtitle: '1200',
              link: 'lib/images/food1.jpg',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemDetails()),
                );
              },
            ),
            Item_Food(
              title: 'title',
              subtitle: '1200',
              link: 'lib/images/food2.jpg',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemDetails()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
