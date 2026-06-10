import 'package:flutter/material.dart';
import '../widgets/app_largetext.dart';
import '../widgets/app_text.dart';
import '../widgets/textfield.dart';
import '../widgets/password.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 40.0,
          right: 16,
          left: 16,
          bottom: 25,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 22, 41, 251).withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppLargeText(
                    text: "Welcome Back",
                    size: 34,
                    color: Color.fromARGB(255, 12, 19, 146),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const AppText(
                    text: "Login to continue",
                    size: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                          text: "Phone or Email",
                          size: 16,
                          color: Color.fromARGB(221, 80, 79, 79),
                          fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 3,
                      ),
                      CustomTextField(
                        controller: _nameController,
                        hintText: "+255 7XX XXX XXX",
                        icon: Icons.person_outline,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                          text: "Password",
                          size: 16,
                          color: Color.fromARGB(221, 80, 79, 79),
                          fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 3,
                      ),
                      CustomPasswordField(
                        controller: _passwordController,
                        hintText: "Enter Password",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 18,
                        color: Color.fromARGB(255, 80, 79, 79),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      AppText(
                        text: "Remember me",
                        size: 14,
                        color: Color.fromARGB(255, 80, 79, 79),
                      ),
                      Spacer(),
                      AppText(
                        text: "Forgot Password?",
                        size: 14,
                        color: Color.fromARGB(255, 12, 51, 170),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(9, 15, 128, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: AppText(
                        text: "LOGIN",
                        size: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: AppText(
                      text: " OR SIGN IN WITH  ",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromARGB(255, 118, 149, 215),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/google.png',
                                width: 24, height: 24),
                            const SizedBox(
                              width: 10,
                            ),
                            const AppText(
                              text: "Google",
                              size: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromARGB(255, 92, 127, 202),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.fingerprint_outlined,
                              color: Color.fromRGBO(16, 22, 193, 1),
                              size: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "Biometrics",
                              size: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          const SizedBox(height: 45,),
          const AppText(text: "Don't have an account yet?",
          size: 14,
          color: Color.fromARGB(255, 80, 79, 79),
          fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 111, 176, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children:  [
                  Icon(Icons.shopping_bag_outlined, color: Color.fromARGB(255, 63, 57, 245), size: 24,),
                    SizedBox(height: 4,),
                  AppText(
                    text: "Register as Customer",
                    size: 16,
                    color: Color.fromARGB(255, 63, 57, 245),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
             ),
          SizedBox(width: 14,),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 203, 205, 207),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children:  [
                  Icon(Icons.storefront_outlined, color: Color.fromARGB(255, 118, 118, 120), size: 24,),
                    SizedBox(height: 4,),
                  AppText(
                    text: "Register as Vendor",
                    size: 16,
                    color: Color.fromARGB(255, 105, 105, 105),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
             ),

          ],
        ),
          ]
        ),
      ),
    );
  }
}
