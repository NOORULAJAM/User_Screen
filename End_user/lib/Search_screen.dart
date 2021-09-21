import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home_page.dart';
import 'My_Card.dart';
import 'My_pending_orders.dart';
import 'Single_product.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            "Search Product",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 8, 25, 5),
            child: Column(
              children: [
                /////////////////////////// SEARCH BAR /////////////////////

                Container(
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.1), width: 0),
                        color: Colors.white),
                    child: ListTile(
                      minLeadingWidth: 5,
                      leading: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search",
                          ),
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(Icons.tune_outlined),
                      ),
                    ),
                  ),
                ),

                ///////////////////////////  TAB BAR HORIZONTAL TEXT  /////////////////////

                ///////////////////////////  TAB BAR TEXT  /////////////////////

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 8),
                  child: Container(
                    height: 40,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                child: Text("Manure",
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: Color(0xff216430))),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.green),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                              // TextButton(

                              //     onPressed: () {},
                              //     child: Text("Manure",
                              //         style: TextStyle(
                              //             fontSize: 15, color: Color(0xff216430)))),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        primary: Colors.black),
                                    onPressed: () {},
                                    child: Text("Dirt",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey))),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text("Mulch",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey))),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text("Wood",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey))),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text("Type5!",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey))),
                              ),
                            ],
                          );
                        }),
                  ),
                ),

                ///////////////////////////  Vertical Grid Text /////////////////////

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent Products",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),

                ///////////////////////////  Vertical Grid /////////////////////
                /////////////////////////// 1st Container /////////////////////
                ///////////////////////////  Main Container /////////////////////
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleProduct()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xff216430),
                          width: 1,
                        ),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////////////////////////// Body Container /////////////////////
                        Container(
                          child: ListTile(
                            /////////////////////////// Image /////////////////////
                            leading: Image.asset(
                              'images/first.jpg',
                              width: 70,
                              height: 80,
                            ),
                            /////////////////////////// Middle Part /////////////////////
                            title: Text(
                              'leading widget',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            subtitle: Text("Subtitle",
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                )),

                            /////////////////////  Right Text /////////////
                            trailing: Text("\$120-\$130",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff216430)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /////////////////////////// 2nd Container /////////////////////
                ///////////////////////////  Main Container /////////////////////
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleProduct()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xff216430),
                          width: 1,
                        ),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////////////////////////// Body Container /////////////////////
                        Container(
                          child: ListTile(
                            /////////////////////////// Image /////////////////////
                            leading: Image.asset(
                              'images/first.jpg',
                              width: 70,
                              height: 80,
                            ),
                            /////////////////////////// Middle Part /////////////////////
                            title: Text(
                              'leading widget',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            subtitle: Text("Subtitle",
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                )),

                            /////////////////////  Right Text /////////////
                            trailing: Text("\$120-\$130",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff216430)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
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
                  color: Color(0xff216430),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_bag_outlined),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPendingOrder()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.account_circle),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPendingOrder()),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
