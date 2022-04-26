import 'package:flutter/material.dart';
import 'package:loginpage/pages/LoginScreen.dart';

bool isVisible = false;
bool isVisible2 = false;

final TextEditingController _passwordController = new TextEditingController();

String password = "";

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 194, 191, 191),
            body: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: ListView(
                children: [
                  Container(
                    child: Card(
                      color: Color.fromARGB(255, 240, 240, 240),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 10, // Shaddow card
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.account_circle_sharp,
                                  size: 60,
                                ),
                              ),
                              Container(
                                // color: Colors.amber,
                                padding: const EdgeInsets.only(
                                  top: 30,
                                  left: 10,
                                  right: 20,
                                  bottom: 40,
                                ),
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(children: [
                              InputUsername(),
                              InputEmail(),
                              InputPassword("Password", "Enter Your Password"),
                              ReInputPassword(
                                  "Confirm Password", "Re Enter Your Password"),
                            ]),
                          ),
                          Container(
                            height: 70,
                            padding:
                                EdgeInsets.only(top: 20, left: 30, right: 30),
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreen();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color.fromARGB(255, 77, 169,
                                      245), // Color ElevatedButton
                                  padding: const EdgeInsets.symmetric(
                                      // Border Radius ElevatedBUtton
                                      horizontal: 40,
                                      vertical: 10),
                                  shape: StadiumBorder()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Already have acoount?",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            // child: TextButton(
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: const [
                            //       Text("Already have acoount?",
                            //           style: TextStyle(
                            //               color: Colors.black, fontSize: 12)),
                            //     ],
                            //   ),
                            //   onPressed: () {
                            //     Navigator.pushReplacement(context,
                            //         MaterialPageRoute(builder: (context) {
                            //       return LoginPage();
                            //     }));
                            //   },
                            // ),
                          ),
                          SigninButton(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  Container SigninButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: TextButton(
        child: const Text(
          "Sign in",
          style: TextStyle(fontSize: 13),
        ),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginScreen();
          }));
        },
      ),
    );
  }

  Padding InputPassword(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
      child: Container(
        height: 55,
        child: Card(
          shadowColor: Color.fromARGB(255, 117, 115, 115),
          margin: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TextFormField(
                    // controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: label,
                      hintText: hint,
                      hintStyle: const TextStyle(fontSize: 13),
                      suffixIcon: IconButton(
                        icon: Icon(isVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              isVisible = !isVisible;
                            },
                          );
                        },
                      ),
                    ),
                    obscureText: !isVisible,
                    keyboardType: TextInputType.text,

                    // onSaved: (str) {
                    //   password = str.toString();
                    // }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding ReInputPassword(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
      child: Container(
        height: 55,
        child: Card(
          shadowColor: Color.fromARGB(255, 117, 115, 115),
          margin: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TextFormField(
                    // controller: _passwordController2,
                    decoration: InputDecoration(
                      labelText: label,
                      hintText: hint,
                      hintStyle: const TextStyle(fontSize: 13),
                      suffixIcon: IconButton(
                        icon: Icon(isVisible2
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              isVisible2 = !isVisible2;
                            },
                          );
                        },
                      ),
                    ),
                    obscureText: !isVisible2,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding InputUsername() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      child: Container(
        height: 55,
        child: Card(
          shadowColor: Color.fromARGB(255, 117, 115, 115),
          margin: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: "Enter Your Username",
                        hintStyle: TextStyle(fontSize: 13)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding InputEmail() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
      child: Container(
        height: 55,
        child: Card(
          shadowColor: Color.fromARGB(255, 117, 115, 115),
          margin: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(fontSize: 13)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
