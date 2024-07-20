import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heyroomie/constent.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/background.JPG")),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.transparent,
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "HeyRoomie",
                  style: GoogleFonts.pacifico(
                      fontSize: 42,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton.icon(
                            style: const ButtonStyle(
                                foregroundColor:
                                    WidgetStatePropertyAll(AppColors.secColor),
                                backgroundColor: WidgetStatePropertyAll(
                                    AppColors.sec2Color)),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/google.svg",
                              // ignore: deprecated_member_use
                              color: AppColors.secColor,
                              width: 38,
                            ),
                            label: const Text(
                              "Continue with Google",
                              style: TextStyle(fontSize: 18),
                            ))),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80.0, vertical: 16),
                      child: Divider(),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.password_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            //TODO: forgot password function
                          },
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: AppColors.sec2Color, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton.icon(
                            style: const ButtonStyle(
                                foregroundColor:
                                    WidgetStatePropertyAll(AppColors.sec2Color),
                                backgroundColor:
                                    WidgetStatePropertyAll(AppColors.secColor)),
                            onPressed: () {},
                            icon: const Icon(Icons.login),
                            label: const Text(
                              "Log-in",
                              style: TextStyle(fontSize: 18),
                            ))),
                    const SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          foregroundColor:
                              WidgetStatePropertyAll(AppColors.sec2Color)),
                      child: const Text(
                        "Sign up?",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
