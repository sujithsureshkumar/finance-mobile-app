import 'package:finance_mobile_app/views/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/controller/auth.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:finance_mobile_app/controller/googleSignIn.dart';

class buildMyDrawer extends StatelessWidget {
  final VoidCallback? onPressed;
  buildMyDrawer({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: ListView(children: <Widget>[
            ListTile(
              onTap: () async {
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                await provider.logout().then((value) => Navigator.of(context)
                    .pushReplacement(
                        MaterialPageRoute(builder: (ctx) => Welcome())));
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
            ListTile(
              onTap: () async {
                await _auth.signOut().then((value) => Navigator.of(context)
                    .pushReplacement(
                        MaterialPageRoute(builder: (ctx) => Welcome())));
              },
              leading: Icon(Icons.logout),
            ),
          ]),
        ),
      ]),
    );
  }
}
