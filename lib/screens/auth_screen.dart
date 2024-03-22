import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/logo_icon.png'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: maxWidth * .8,
                child: Column(
                  children: [
                    TextFormField(
                      inputFormatters: [LengthLimitingTextInputFormatter(18)],
                      decoration: InputDecoration(
                          icon: Image.asset('images/email_icon.png'),
                          hintText: "Email",
                          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                          border: InputBorder.none),
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      inputFormatters: [LengthLimitingTextInputFormatter(16)],
                      decoration: InputDecoration(
                          icon: Image.asset('images/password_icon.png'),
                          hintText: "Password",
                          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                          border: InputBorder.none),
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 205,
                height: 59,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xFFF67952)),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: maxWidth * .6,
                child: const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xFF232E24),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Text("OR"),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xFF232E24),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
