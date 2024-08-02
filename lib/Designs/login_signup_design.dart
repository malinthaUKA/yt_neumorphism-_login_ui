import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:yt_neumorphism_login_ui/const.dart';
import 'package:yt_neumorphism_login_ui/widgets/un_pw_input.dart';

class LoginSignupDesign extends StatefulWidget {
  const LoginSignupDesign({super.key});

  @override
  State<LoginSignupDesign> createState() => _LoginSignupDesignState();
}

class _LoginSignupDesignState extends State<LoginSignupDesign> {
  final Icon _icon1 = Icon(Icons.person);
  final Icon _icon2 = Icon(Icons.lock);
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  late String userName;
  late String password;
  late String UI = '';

  printUsr() {
    userName = _controller1.text;
    password = _controller2.text;
    print(userName);
    print(password);

    setState(() {
      UI = userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: screenWidth * 0.86,
          height: screenHeigth * 0.7,
          decoration: BoxDecoration(
            // color: const Color.fromARGB(255, 209, 193, 144),
            color: backgroundColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              const BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                offset: Offset(-10, -10),
              ),
              BoxShadow(
                color: darkColor.withOpacity(0.2),
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi, Welcome back",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                // username input field

                inputPassword("Username", _icon1, _controller1, false),

                const SizedBox(
                  height: 20,
                ),

                // password input field
                inputPassword("Password", _icon2, _controller2, true),
                const SizedBox(
                  height: 20,
                ),

                // const Text(
                //   "Password",
                //   style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontSize: 16,
                //   ),
                // ),
                // const SizedBox(
                //   height: 2,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //     color: backgroundColor,
                //     borderRadius: BorderRadius.circular(25),
                //     boxShadow: [
                //       BoxShadow(
                //           color: darkColor.withOpacity(0.4),
                //           blurRadius: 2,
                //           offset: Offset(5, 5),
                //           inset: true),
                //       const BoxShadow(
                //         color: Colors.white,
                //         blurRadius: 3,
                //         offset: Offset(-4, -4),
                //         inset: true,
                //       ),
                //     ],
                //   ),
                //   child: TextFormField(
                //     obscureText: true,
                //     decoration: const InputDecoration(
                //       border: InputBorder.none,
                //       prefixIcon: Icon(Icons.lock),
                //       contentPadding:
                //           EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                //     ),
                //   ),
                // ),

                const SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            const BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                offset: Offset(-5, -5)),
                            BoxShadow(
                              color: darkColor.withOpacity(0.2),
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ]),
                      child: Icon(
                        Icons.check,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "forgot password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      printUsr();
                    },
                    child: Container(
                      width: screenWidth * 0.7,
                      height: screenHeigth * 0.05,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.white,
                            blurRadius: 8,
                            offset: Offset(-7, -7),
                          ),
                          BoxShadow(
                            color: darkColor.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(7, 7),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?', // '' athule ' yedeemata \' denna
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.green),
                    ),
                    Text(
                      'Register', // '' athule ' yedeemata \' denna
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blue),
                    ),
                  ],
                ),
                Text(UI),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
