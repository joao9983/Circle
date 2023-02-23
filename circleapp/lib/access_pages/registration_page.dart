import 'package:circle/HomeWidget/home.dart';
import 'package:circle/access_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
              SizedBox(
                height: height * 0.08,
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
              SizedBox(
                height: height * 0.08,
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.015),
                child: SizedBox(
                  width: width * 0.94,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your full Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.015),
                child: SizedBox(
                  width: width * 0.94,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.015),
                child: SizedBox(
                  width: width * 0.94,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.015),
                child: SizedBox(
                  width: width * 0.94,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.94,
                height: height * 0.09,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 85, 211, 150),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account ? "),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Color.fromARGB(255, 85, 211, 150)),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
