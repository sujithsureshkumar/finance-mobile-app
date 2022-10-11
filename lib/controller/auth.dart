import 'package:finance_mobile_app/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';



class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  Users? _userFromFirebaseUser(User? user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<Users?>? get user {
    return _auth.authStateChanges()
    //.map((User user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);
  }

 

// sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user!;

     

      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }


// register with email and password
  Future createAccount(String name, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user!;
      //print(_userFromFirebaseUser(user));
      Users? users =_userFromFirebaseUser(user);
      print("Account created Successfully");

      result.user!.updateDisplayName(name);


      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

// sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}