
import 'package:flutter/material.dart';
import 'package:user_screen/Home_page.dart';
import 'Sing_up.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
           height: MediaQuery.of(context).size.height*1.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Login It, Get, Enjoy.",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arial'),
                    ),
                  ),
                  SizedBox(
                    height: 26.0,
                  ),

                  //////////////// Email Field //////////////////

                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Email",
                      style: TextStyle(fontFamily: 'Arial', fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),

                  Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'abc@example.com',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Icon(
                            Icons.email,
                            color: Color(0xff216430),size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff216430),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //////////////// Password Field //////////////////

                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Password",
                      style: TextStyle(fontFamily: 'Arial', fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom:7),
                          child: Icon(
                            Icons.https,
                            color: Color(0xff216430),size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff216430),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff216430)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),

                  //////////////// FORGOT TEXT //////////////////

                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xff216430)),
                      )),
                  SizedBox(
                    height: 25.0,
                  ),

                  ////////////////REMEMBER TEXT //////////////////

                  Row(
                    children: [
                     RememberCheckBox(),
                      Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Remember Login")),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //////////////// LOGIN BUTTON //////////////////

                  Center(
                      child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: double.infinity, height: 50),
                    child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Color(0xff216430),
                      ),
                    ),
                  )),

                  ////////////////HAVE ACCOUNT //////////////////
                  SizedBox(
                    height: 25.0,
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
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
                                      builder: (context) => Signup()),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Color(0xff216430)),
                              ))
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RememberCheckBox extends StatefulWidget {
  const RememberCheckBox({ Key? key }) : super(key: key);

  @override
  _RememberCheckBocState createState() => _RememberCheckBocState();
}

class _RememberCheckBocState extends State<RememberCheckBox> {
  
  bool showvalue = false;  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height:25,
      width: 25,
     child: Checkbox(  
       activeColor: Color(0xff216430),
     
  value: this.showvalue,   
  onChanged: (bool? value) {  
    setState(() {  
      this.showvalue = value!;   
    });  
  },  
),  
    );
  }
}