
import 'package:auth_screens_flutter_firebase/routes.dart';
import 'package:auth_screens_flutter_firebase/theme.dart';
import 'package:auth_screens_flutter_firebase/viewModels/logout_view_model.dart';
import 'package:auth_screens_flutter_firebase/viewModels/signup_vm.dart';
import 'package:flutter/material.dart';
import 'package:auth_screens_flutter_firebase/Resources/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Screens/home/home_screen.dart';
import 'Screens/splash/splash_screen.dart';
import 'services/firebase_options.dart';
import 'viewModels/login_vm.dart';
import 'viewModels/reset_password_vm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider (create: (_) => LoginViewModel()),
        ChangeNotifierProvider (create: (_) => ResetViewModel()),
        ChangeNotifierProvider (create: (_) => SignUpViewModel()),
        ChangeNotifierProvider (create: (_) => LogoutViewModel()),
    ],
    child:
    //   MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Auth',
    //   theme: ThemeData(
    //       primaryColor: kPrimaryColor,
    //       scaffoldBackgroundColor: Colors.white,
    //       elevatedButtonTheme: ElevatedButtonThemeData(
    //         style: ElevatedButton.styleFrom(
    //           elevation: 0,
    //           foregroundColor: Colors.white,
    //           backgroundColor: kPrimaryColor,
    //           shape: const StadiumBorder(),
    //           maximumSize: const Size(double.infinity, 56),
    //           minimumSize: const Size(double.infinity, 56),
    //         ),
    //       ),
    //       inputDecorationTheme: const InputDecorationTheme(
    //         filled: true,
    //         fillColor: kPrimaryLightColor,
    //         iconColor: kPrimaryColor,
    //         prefixIconColor: kPrimaryColor,
    //         contentPadding: EdgeInsets.symmetric(
    //             horizontal: defaultPadding, vertical: defaultPadding),
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.all(Radius.circular(30)),
    //           borderSide: BorderSide.none,
    //         ),
    //       )),
    //   home: const HomeScreen(),
    // )
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way - Template',
      theme: AppTheme.lightTheme(context),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    )
    );
  }
}


