import 'dart:ui';

import 'package:flutter/material.dart';

import 'CreditCard.dart';
import 'Home_page.dart';
import 'Map.dart';
import 'demomap.dart';

class CheckOut extends StatelessWidget {
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
                  icon: Icon(Icons.arrow_back_sharp,
                      color: Color(0xff216430))),
              title: Text(
                "CheckOut",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Homepage()));
                  },
                  icon: Icon(Icons.more_horiz_outlined),
                  color: Colors.black,
                )
              ],
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 8),
                child: Column(children: [
                  ///////////////////  TEXT ALIGN /////////////////////
                  Align(
                    alignment: Alignment.topLeft,
                    ///////////////////  TEXT PADDING FOR SPACING /////////////////////
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      ///////////////////  TEXT CONTAINER //////////////////////
                      child: Container(
                        child: Text("Delivery Address"),
                      ),
                    ),
                  ),

                  ///////////////////  BOX CONTAINER //////////////////////
                  /// /////////////////////////// 1st Column /////////////////////
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color(0xff216430), width: 1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 101,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xffE2E1EC)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      color: Color(0xff216430),
                                      size: 25,
                                    )),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Street 1 High tower',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      "Change",
                                      style: TextStyle(
                                        color: Color(0xff216430),
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                subtitle: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.65,
                                  child: Text(
                                      "3517 W. Gray St. Utica, Pennsylvania 57867",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      maxLines: 5),
                                )),
                          ],
                        ),
                      )),

                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      ///////////////////  TEXT PADDING FOR SPACING /////////////////////
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          ///////////////////  TEXT CONTAINER //////////////////////
                          child: Container(
                            child: Text("Payment Method"),
                          ))),

                  ///////////////////  BOX CONTAINER //////////////////////
                  /// /////////////////////////// 2nd Column /////////////////////

                  Container(
                    width: MediaQuery.of(context).size.width * 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color(0xff216430), width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    height: 72,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreditCard()));
                      },
                      child: ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xffE2E1EC)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.payment_outlined,
                              color: Color(0xff216430),
                              size: 25,
                            )),
                        title: Row(
                          children: [
                            Text('Faisal Bank',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                            Text(" Credit Card",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                )),
                          ],
                        ),
                        subtitle: Text("48 ****  ****  9874"),
                        trailing: Icon(Icons.chevron_right_outlined),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  /////////////////  BOX CONTAINER //////////////////////
                  /////////////////////////// 3rd Column /////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff333333).withOpacity(0.1),
                          blurRadius: 20,
                          offset:
                              Offset(2, 9), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 65,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreditCard()));
                      },
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'images/paypal.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        title: Row(
                          children: [
                            Text('Paypal',
                                style: TextStyle(
                                  fontSize: 14,
                                ))
                          ],
                        ),
                        subtitle: Text("48 ****  ****  9874"),
                        trailing: Icon(Icons.chevron_right_outlined),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            bottomNavigationBar: Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        Text('\$1200',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("4 Product",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOut()),
                          );
                        },
                        child: Text("CheckOut For Items"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(270, 43),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          primary: Color(0xff216430),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              width: double.maxFinite, //Set width
              decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  border: Border.all(width: 1, color: Color(0xff316430)),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            )));
  }
}
