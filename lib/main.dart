import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heyroomie/constent.dart';
import 'package:heyroomie/firebase_options.dart';
import 'package:heyroomie/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HeyRoomie());
}

class HeyRoomie extends StatefulWidget {
  const HeyRoomie({super.key});

  @override
  State<HeyRoomie> createState() => _HeyRoomieState();
}

class _HeyRoomieState extends State<HeyRoomie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppInfo.appName,
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(textTheme: GoogleFonts.rubikTextTheme()),
      home: const LoginScreen(),
    );
  }
}
