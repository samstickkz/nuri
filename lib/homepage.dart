import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:nurika2/register.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('EDEDED'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.5, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor('535353'),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: HexColor('F89820'),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    bottomRight: Radius.circular(35))),
                          ),


                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                          color: HexColor('EDEDED'),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35))),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: HexColor('006633')),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0,left: 8),
                    child: const Text(
                      'Login to your account to get started',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 479,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: HexColor('CFF3E1')),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 19.0, vertical: 27),
                        child: Column(
                          children: [
                            Container(
                              height: 51,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: HexColor('CFF3E1'),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.2),
                                    blurRadius: 1,
                                    spreadRadius: 0.0,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Login with Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 51,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: HexColor('CFF3E1'),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.2),
                                    blurRadius: 1,
                                    spreadRadius: 0.0,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Login with Apple',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            const Text(
                              'or',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            TextField(
                              obscureText: true,
                              // controller: _passwordcontroller,

                              decoration: InputDecoration(
                                fillColor: HexColor('CFF3E1'),
                                filled: true,
                                labelText: 'Enter your password..',
                                border: const OutlineInputBorder(),
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_sharp),
                              ),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            TextField(
                              obscureText: true,
                              // controller: _passwordcontroller,

                              decoration: InputDecoration(
                                fillColor: HexColor('CFF3E1'),
                                filled: true,
                                labelText: 'Enter your Email..',
                                border: const OutlineInputBorder(),
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_sharp),
                              ),
                            ),
                            const SizedBox(
                              height: 31,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'New to Nurika?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPage()));
                                  },


                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('0500FF')),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: HexColor('343434'),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
