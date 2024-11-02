import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:test_app/components/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF140034), Color(0xFF01010D)])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Login",
              fSize: 40,
              fColor: Colors.white,
              fWeight: FontWeight.bold,
            ),
            CustomText(
              text: "Please enter your valid phone number.",
              fSize: 18,
              fColor: Colors.white,
              fWeight: FontWeight.w400,
            ),
            CustomText(
              text: "We will send you a 4-digit code to verify",
              fSize: 18,
              fColor: Colors.white,
              fWeight: FontWeight.w400,
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                      border: GradientOutlineInputBorder(
                          width: 2,
                          borderRadius: BorderRadius.circular(40),
                          gradient: const LinearGradient(
                            colors: [Color(0xFFDD3562), Color(0xFF8354FF)],
                          ))),
                )),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFDD3562), Color(0xFF8354FF)])),
                child: Center(
                  child: CustomText(
                    text: "Submit",
                    fSize: 25,
                    fColor: Colors.white,
                    fWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Color(0xFFDD3562),
                  )),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFDD3562))),
                    child: Center(
                      child: CustomText(
                          text: 'OR',
                          fSize: 20,
                          fColor: Colors.white,
                          fWeight: FontWeight.normal),
                    ),
                  ),
                  const Expanded(
                      child: Divider(
                    color: Color(0xFFDD3562),
                    thickness: 0.5,
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
                text: 'Login using',
                fSize: 25,
                fColor: Colors.white,
                fWeight: FontWeight.normal),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: CustomText(
                        text: 'f',
                        fSize: 35,
                        fColor: Colors.white,
                        fWeight: FontWeight.bold)),
                const SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red.shade400,
                    child: Center(
                      child: CustomText(
                          text: 'G',
                          fSize: 30,
                          fColor: Colors.white,
                          fWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
