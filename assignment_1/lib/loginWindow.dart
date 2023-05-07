// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginWindow extends StatefulWidget {
  const loginWindow({super.key});

  @override
  State<loginWindow> createState() => _loginWindowState();
}

// ignore: camel_case_types
class _loginWindowState extends State<loginWindow> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/images/logo.png"),
                  )
                ],
              ),
              const Text(
                "email",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  hintText: "jimmy@hotmail.com",
                  hintStyle: TextStyle(fontSize: 15),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
              const Text(
                "password",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  hintText: "........",
                  hintStyle: TextStyle(fontSize: 20),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint("Renew Password");
                    },
                    child: const Text("forgot password?",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint("Sign In Clicked");
                    },
                    child: const Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.red))))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "or",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: () => print("google"),
                    icon: new Image.asset(
                      "assets/icons/google.png",
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: () => print("facebook"),
                    icon: new Image.asset(
                      "assets/icons/facebook.jpg",
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint("Sign Up");
                    },
                    child: const Text("Don't have an account? Sign Up",
                        style: TextStyle(color: Colors.red, fontSize: 16)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
