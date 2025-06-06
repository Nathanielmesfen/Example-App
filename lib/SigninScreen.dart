import 'package:flutter/material.dart';
import 'package:my_app/CartPage.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final _formkey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _passwordResign = TextEditingController();

  @override
  void dispose() {
    _password.dispose();
    _username.dispose();
    _passwordResign.dispose();
    super.dispose();
  }

  void _signin() {
    if (_formkey.currentState!.validate()) {
      // Here you can add the login logic, like sending the data to the server
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Cartpage()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Sign in Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _username,
                  decoration: const InputDecoration(labelText: 'Add Username'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ('Please Enter your Username');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: _password,
                  decoration:
                      const InputDecoration(labelText: 'Create Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ('Please Enter your Password');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: _passwordResign,
                  decoration:
                      const InputDecoration(labelText: 'Re-enter Password'),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value != _password.text) {
                      return ('Please Re-enter Password');
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _signin,
                  child: const Text('Sign in'),
                )
              ],
            )),
      ),
    );
  }
}
