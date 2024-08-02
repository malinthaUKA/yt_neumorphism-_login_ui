import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class LoginSignupDesign extends StatefulWidget {
  const LoginSignupDesign({super.key});

  @override
  State<LoginSignupDesign> createState() => _LoginSignupDesignState();
}

class _LoginSignupDesignState extends State<LoginSignupDesign> {
  var backgroundColor = Colors.grey[300];
  Color darkColor = const Color(0XFF0D2750);

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
              BoxShadow(
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
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi, Welcome back",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),

                //

                SizedBox(
                  height: 40,
                ),
                Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: darkColor.withOpacity(0.4),
                          blurRadius: 2,
                          offset: Offset(5, 5),
                          inset: true),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    ),
                  ),
                )

                //

                ,
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: darkColor.withOpacity(0.4),
                          blurRadius: 2,
                          offset: Offset(5, 5),
                          inset: true),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                offset: Offset(-5, -5)),
                            BoxShadow(
                              color: darkColor.withOpacity(0.2),
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ]),
                      child: Icon(Icons.check),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "forgot password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: screenWidth * 0.7,
                    height: screenHeigth * 0.05,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
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
                    child: Center(
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
                SizedBox(
                  height: 30,
                ),

                Row(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
