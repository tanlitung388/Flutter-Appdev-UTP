import 'package:flutter/material.dart';
import 'package:utpappdev/services/auth.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: Container(
        child: RaisedButton(
          child: Text('Logout'),
          onPressed: () async {
            await _auth.signOut();
          },
        ),
      ),
    );
  }
}

