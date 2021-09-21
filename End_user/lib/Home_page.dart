import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'My_Card.dart';
import 'My_pending_orders.dart';
import 'Search_screen.dart';
import 'Single_product.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 147.0,
                child: Stack(
                  children: <Widget>[
                    Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff216430),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                        ),
                        height: 110.0,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.menu_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Positioned(
                      top: 90.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1.0),
                              color: Colors.white),
                          child: ListTile(
                            minLeadingWidth: 5,
                            leading: Icon(
                              Icons.search,
                              size: 20,
                            ),
                            title: TextField(
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
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Icon(Icons.tune_outlined),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///////////////////////////  TAB BAR TEXT  /////////////////////

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                                      fontSize: 21, color: Color(0xff216430))),
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
                                          fontSize: 18, color: Colors.grey))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Mulch",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Wood",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Type5!",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey))),
                            ),
                          ],
                        );
                      }),
                ),
              ),

              ///////////////////////////  GRID HORIZONTAL TEXT/////////////////////

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Recent Products",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.right),
                ),
              ),

              ///////////////////////////   GRID HORIZONTAL /////////////////////
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                    height: 160,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SingleProduct()));
                            },
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingleProduct()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff000000).withOpacity(0.1),
                                      blurRadius: 58,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                height: 192,
                                width: 150,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          fit: BoxFit.cover,
                                          image: ExactAssetImage(
                                              'images/first.jpg'),
                                          height: 80,
                                          width: 140,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Garden Mulch",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("Was popularied",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("120-200",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: GoogleFonts.lato(
                                                          textStyle: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 8,
                                                      )))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
              ),

              ///////////////////////////  Vertical Grid Text /////////////////////

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Products List",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.right),
                ),
              ),
              ///////////////////////////  Vertical Grid /////////////////////
              SizedBox(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 350.0,
                  child: ListView(
                    children: <Widget>[
                      ProductListCard(),
                      ProductListCard(),
                      ProductListCard(),
                      ProductListCard(),
                    ],
                  ),
                ),
              ),
            ]),
          ),
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
                    color: Color(0xff216430),
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
                    color: Colors.grey,
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

class ProductListCard extends StatelessWidget {
  const ProductListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingleProduct()));
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
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                ),
                subtitle: Text("Subtitle",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    )),

                /////////////////////  Right Text /////////////
                trailing: Text("\$120-\$130",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 8, color: Color(0xff216430)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
