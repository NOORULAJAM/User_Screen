import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'Checkout.dart';
import 'Home_page.dart';
import 'Single_product.dart';
// import 'Home_page.dart';
// import 'My_pending_orders.dart';
// import 'Search_screen.dart';

class MyCart extends StatelessWidget {
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
                "My Cart",
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
            body:
                ///////////////////////////  Vertical Grid Main Container  /////////////////////
                Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                    child: ListView(children: <Widget>[
                      /////// 1st Card Container  //////
                      Carts(),
                    ])),
            bottomNavigationBar: Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
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
                      width: MediaQuery.of(context).size.width * 0.85,
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


class Carts extends StatefulWidget {
  const Carts({ Key? key }) : super(key: key);

  @override
  _CartsState createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  var count=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
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
            color: Colors.green,
            width: 1,
          ),
          color: Colors.white),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SingleProduct()));
        },
        leading: Image.asset(
          'images/second.jpg',
          height: 80,
          width: 70,
        ),
        title: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dirt Graden xyz',
                  style: GoogleFonts.nunito(
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.delete_outlined,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ]),
        subtitle: Column(
          children: [
            Row(
              children: [
                Text("lorem epsum"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$120.00",
                    style: GoogleFonts.nunito(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.green))),
                Row(
                  children: [
                    IconButton(
                         onPressed: () {
                       setState(() {
                    count+=1;
                       });
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          size: 20,
                        )),
                    Text("$count"),
                    IconButton(
                        onPressed: () {
                       setState(() {
                    count-=1;
                       });
                        },
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                            size: 20,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








