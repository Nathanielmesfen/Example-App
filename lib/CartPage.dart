import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/LoginScreen.dart';
import 'package:my_app/SigninScreen.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('E commerce business'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'My App Drawer',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Login',
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Loginscreen()));
              },
            ),
            ListTile(
              title: const Text('Sign up'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Signinscreen()));
              },
            ),
            ListTile(
              title: Text('Buy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cartpage()),
                );
              },
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Image(
                    image: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod/images/ripe-apple-royalty-free-image-1659454396.jpg?crop=0.924xw:0.679xh;0.0197xw,0.212xh&resize=980:*rl'),
                    height: 200.0,
                    width: 200.0,
                  ),
                  subtitle: Text(
                    '24.99',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
