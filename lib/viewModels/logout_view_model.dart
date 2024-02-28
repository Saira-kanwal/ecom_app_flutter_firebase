import 'package:auth_screens_flutter_firebase/Screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class LogoutViewModel extends ChangeNotifier{
  void logOut(BuildContext context) async {
    FirebaseService.logout(
        goToLogin: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const SignInScreen()),
                (Route<dynamic> route) => false,
          );
        }
    );
  }
}
