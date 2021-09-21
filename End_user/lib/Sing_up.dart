import 'package:flutter/material.dart';
import 'log_in.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 1.0,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "Sign Up, Get, Enjoy .",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    //////////////// Name Feild  ///////////////////

                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Name",
                          style: TextStyle(fontFamily: 'Arial'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.account_circle,
                              color: Color(0xff216430)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff216430),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 8.0,
                    ),

                    //////////////// Address Feild  ///////////////////
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Address",
                          style: TextStyle(fontFamily: 'Arial'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your address',
                          prefixIcon: Icon(Icons.location_city,
                              color: Color(0xff216430)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff216430),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 8.0,
                    ),

                    //////////////// Phone Feild  ///////////////////

                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Phone",
                          style: TextStyle(fontFamily: 'Arial'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your phone no',
                          prefixIcon:
                              Icon(Icons.phone, color: Color(0xff216430)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff216430),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),

                    //////////////// Email Feild  //////////////////
                    SizedBox(
                      height: 8.0,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Email",
                          style: TextStyle(fontFamily: 'Arial'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'abc@example.com',
                          prefixIcon:
                              Icon(Icons.email, color: Color(0xff216430)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    //////////////// Password Feild  //////////////////

                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Password",
                          style: TextStyle(fontFamily: 'Arial'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 55,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon:
                              Icon(Icons.lock, color: Color(0xff216430)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff216430),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    //////////////// BUTTON //////////////////

                    Center(
                        child: ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 320, height: 55),
                      child: ElevatedButton(
                        child: Text("Sign Up"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          primary: Color(0xff216430),
                        ),
                      ),
                    )),

                    //////////////// Have acoount?? //////////////////
                    SizedBox(
                      height: 20,
                    ),

                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have already account?"),
                            TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Loginpage()),
                                  );
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(color: Color(0xff216430)),
                                ))
                          ]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
