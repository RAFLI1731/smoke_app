import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smoke_apps/Home.dart';
import 'package:smoke_apps/LoginScreen.dart';
import '../animation/fade_animation.dart';

class RegisterPage extends StatefulWidget {
  // static String routeName = "/sign_in";
  RegisterPage({Key? key}) : super(key: key);
  FocusNode focusNode = FocusNode();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _passwordVisible = false;

  void initState() {
    _passwordVisible = false;
  }

  bool hiddenPassword = true;
  final _formLogin = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: Form(
                      key: _formLogin,
                      child: Column(
                        children: [
                          FadeAnimation(
                            delay: 2.5,
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                child: const Center(
                                    child: Text("Sign Up",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)))),
                          ),
                          FadeAnimation(
                            delay: 2.0,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.01),
                              child: const Center(
                                child: Text("It's quick and easy"),
                              ),
                            ),
                          ),
                          FadeAnimation(
                              delay: 1.8,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.05),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Username tidak boleh kosong!';
                                        }
                                        return null;
                                      },
                                      // controller: model.emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      decoration: InputDecoration(
                                        hintText: 'Username',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            96, 223, 221, 221),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'nama tidak boleh kosong!';
                                        }
                                        return null;
                                      },
                                      // obscureText: !_passwordVisible,
                                      // controller: model.passwordController,
                                      // keyboardType:
                                      //     TextInputType.visiblePassword,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      decoration: InputDecoration(
                                        hintText: 'Nama Lengkap',
                                        // suffixIcon: IconButton(
                                        //   icon: Icon(
                                        //     // Based on passwordVisible state choose the icon
                                        //     _passwordVisible
                                        //         ? Icons.visibility
                                        //         : Icons.visibility_off,
                                        //     color: Theme.of(context)
                                        //         .primaryColorDark,
                                        //   ),
                                        //   onPressed: () {
                                        //     setState(() {
                                        //       _passwordVisible =
                                        //           !_passwordVisible;
                                        //     });
                                        //   },
                                        // ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            96, 223, 221, 221),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Password tidak boleh kosong!';
                                        }
                                        return null;
                                      },
                                      obscureText: !_passwordVisible,
                                      // controller: model.passwordController,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      decoration: InputDecoration(
                                        hintText: '********',
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            96, 223, 221, 221),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          FadeAnimation(
                            delay: 1.5,
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 45,
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  primary: Colors.white,
                                  backgroundColor: Colors.blue,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                onPressed: () {
                                  // if (_formLogin.currentState!.validate()) {
                                  //   FocusScope.of(context)
                                  //       .requestFocus(FocusNode());
                                  //   model.loginUsers(context);
                                  // }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: const Text('Sign Up'),
                              ),
                            ),
                          ),
                          FadeAnimation(
                            delay: 1.5,
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 45,
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  primary: Colors.blue,
                                  backgroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: const Text('Log in'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )))));
  }
}
