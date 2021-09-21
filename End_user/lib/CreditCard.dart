import 'package:flutter/material.dart';

import 'Home_page.dart';
import 'My_Approved_orders.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp, color: Color(0xff216430))),
            title: Text(
              "Payment Card",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                icon: Icon(Icons.more_horiz_outlined),
                color: Colors.black,
              )
            ],
          ),
          backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(25, 35, 25, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      "https://i.pinimg.com/originals/3f/2a/85/3f2a85bdafac9d2ba54a20bba55b999a.png",
                      width: 45,
                      height: 35,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9alfGRsDeBYSlzZeYEKPZexApYw7IrMBhK7jFpqjIRctlRcZgaeG4WSsBH7GJ4uJ6RFc&usqp=CAU",
                      width: 45,
                      height: 35,
                    ),
                    Image.network(
                      "https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/software_photos/000/735/310/datas/original.jpg",
                      width: 45,
                      height: 35,
                    ),
                    Image.network(
                      "https://i.pinimg.com/originals/3f/2a/85/3f2a85bdafac9d2ba54a20bba55b999a.png",
                      width: 45,
                      height: 35,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk52zlqgCP1i3qXVi7Pdjin1NHReXmgPe9TA&usqp=CAU",
                      width: 45,
                      height: 35,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text("Credit Card Details",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Text("Card Number",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ]),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '5220 - ____',
                            prefixIcon: Icon(Icons.credit_score_outlined),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff216430),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '__ / __',
                              prefixIcon: Icon(Icons.date_range_outlined),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff216430),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '_ _ _',
                              prefixIcon: Icon(Icons.credit_card_outlined),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff216430),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: FloatingActionButton(
              backgroundColor: Color(0xff216430),
              child: Text("Pay Now",style: TextStyle(fontSize: 16),), //child widget inside this button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                   onPressed: () {
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
                                            titlePadding:
                                                EdgeInsets.fromLTRB(5, 5, 5, 5),
                                            scrollable: true,
                                        
                                            content: Column(
                                              children: [
                                                Icon(
                                                  Icons.file_download_done,
                                                  color: Color(0xff216430),
                                                  size: 50,
                                                ),
                                                Text("Order Successful",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                    "Thank you for shopping here. We will process your order soon and look forward to your arrival!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    )),
                                                SizedBox(
                                                  height: 18,
                                                ),
                                                SizedBox(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                MyApprovedOrder()),
                                                      );
                                                    },
                                                    child: Text("My Order"),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0)),
                                                      primary:
                                                          Color(0xff216430),
                                                    ),
                                                  ),
                                                ),
                                                TextButton(onPressed: (){
                                                  Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Homepage()),
                                                      );

                                                }, child: Text("Home page",style: TextStyle(color: Color(0xff363853)),))
                                              ],
                                            ),
                                          );
                                        });
                                  }
                                },
            ),
          ),
        ));
  }
}
