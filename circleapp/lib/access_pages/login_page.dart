import 'package:circle/access_pages/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('images/Shape.svg'),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome Onboard!',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Lets help to fullfill your dream',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              const Padding(
                padding: EdgeInsets.all(11.0),
                child: SizedBox(
                  width: 360,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(11.0),
                child: SizedBox(
                  width: 360,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 85, 211, 150),
                        ),
                      ))
                ],
              ),
              SizedBox(
                width: 360,
                height: 70,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 85, 211, 150),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 85, 211, 150),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
