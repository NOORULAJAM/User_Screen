import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home_page.dart';
import 'My_Approved_orders.dart';
import 'My_Card.dart';
import 'My_Delivred_orders.dart';
import 'Search_screen.dart';

class MyPendingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              "My Pending Orders",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyPendingOrder()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffe8e8e8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Color(0xff216430), width: 0),
                                  )),
                              child: Text(
                                "Pending Orders",
                                style: TextStyle(
                                    color: Color(0xff216430), fontSize: 11),
                              )),
                        ),
                        Container(
                          height: 35,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApprovedOrder()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: Color(0xff216430), width: 0),
                              )),
                              child: Text(
                                "Approved Orders",
                                style: TextStyle(
                                    color: Color(0xff216430), fontSize: 11),
                              )),
                        ),
                        Container(
                          height: 35,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyDeliveredOrder()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: Color(0xff216430), width: 0),
                              )),
                              child: Text(
                                "Delivered Orders",
                                style: TextStyle(
                                    color: Color(0xff216430), fontSize: 11),
                              )),
                        ),
                      ],
                    ),
                    /////////////////////////// 1st Container /////////////////////
                    ///////////////////////////  Main Container /////////////////////
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                      height: 121,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff216430),
                            width: 1,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 3),
                        child: Column(
                          children: [
                            /////////////////////////// Body Container /////////////////////
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 8, 15, 0),
                                /////////////////////////// Top Text Row /////////////////////
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text("Date: ",
                                                style: TextStyle(fontSize: 12)),
                                            Text("20-09-2020",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ]),
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text("Order: ",
                                                style: TextStyle(fontSize: 12)),
                                            Text("xyz123",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ])
                                    ]),
                              ),
                            ),

                            Container(
                              child: ListTile(
                                /////////////////////////// Image /////////////////////
                                leading: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Image.asset(
                                    'images/second.jpg',
                                    width: 70,
                                    height: 80,
                                  ),
                                ),
                                /////////////////////////// Middle Part /////////////////////
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Dirt Graden xyz',
                                            style: GoogleFonts.nunito(
                                                textStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lorem epsums",
                                              style: GoogleFonts.nunito(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              )),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                subtitle: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [],
                                    ),
                                    Row(
                                      children: [
                                        Text("\$120.00 - \$150.00",
                                            style: GoogleFonts.lato(
                                              textStyle: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.green),
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 14,
                                              color: Color(0xff216430),
                                            ),
                                            Text(" 5",
                                                style: TextStyle(fontSize: 12)),
                                            Text(" Qty",
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Total: ",
                                                style: TextStyle(fontSize: 11)),
                                            Text(" \$120",
                                                style: TextStyle(fontSize: 11)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ), 
                          ],
                        ),
                      ),
                    ),



                         Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      height: 121,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff216430),
                            width: 1,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 3),
                        child: Column(
                          children: [
                            /////////////////////////// Body Container /////////////////////
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 8, 15, 0),
                                /////////////////////////// Top Text Row /////////////////////
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text("Date: ",
                                                style: TextStyle(fontSize: 12)),
                                            Text("20-09-2020",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ]),
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text("Order: ",
                                                style: TextStyle(fontSize: 12)),
                                            Text("xyz123",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ])
                                    ]),
                              ),
                            ),

                            Container(
                              child: ListTile(
                                /////////////////////////// Image /////////////////////
                                leading: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Image.asset(
                                    'images/second.jpg',
                                    width: 70,
                                    height: 80,
                                  ),
                                ),
                                /////////////////////////// Middle Part /////////////////////
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Dirt Graden xyz',
                                            style: GoogleFonts.nunito(
                                                textStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lorem epsums",
                                              style: GoogleFonts.nunito(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              )),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                subtitle: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [],
                                    ),
                                    Row(
                                      children: [
                                        Text("\$120.00 - \$150.00",
                                            style: GoogleFonts.lato(
                                              textStyle: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.green),
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 14,
                                              color: Color(0xff216430),
                                            ),
                                            Text(" 5",
                                                style: TextStyle(fontSize: 12)),
                                            Text(" Qty",
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Total: ",
                                                style: TextStyle(fontSize: 11)),
                                            Text(" \$120",
                                                style: TextStyle(fontSize: 11)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ), 
                          ],
                        ),
                      ),
                    )
                    
                  ]))),
          bottomNavigationBar: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home_outlined),
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_bag_outlined),
                    color: Color(0xff216430),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyPendingOrder()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle),
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyPendingOrder()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff216430),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCart()),
                );
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
