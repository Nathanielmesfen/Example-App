import 'package:flutter/material.dart';
import 'package:my_app/CartPage.dart';
import 'package:my_app/SigninScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Here you can add the login logic, like sending the data to the server
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Cartpage()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce Shopping'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ('Please enter your username');
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ('Please enter your password');
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Login'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text('Sign in'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signinscreen()));
                  },
                )
              ],
            ),
          )),
    );
  }
}
