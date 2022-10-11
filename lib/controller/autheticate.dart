
import 'package:finance_mobile_app/models/users.dart';
import 'package:finance_mobile_app/views/pages/dashboard.dart';
import 'package:finance_mobile_app/views/pages/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


class Authenticate extends StatelessWidget {
  //final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);
    print(user);
    if (user != null) {
      return Dashboard();
        //ProfileSelection();
        //Home();
    } else {
      return Welcome();
    }
  }
}