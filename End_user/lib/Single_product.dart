import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:badges/badges.dart';
import 'Checkout.dart';
import 'My_Card.dart';

class SingleProduct extends StatelessWidget {
  final description = Container(
    child: Text(
      "A style icon gets some love from one of today's top "
      "trendsetters. Pharrell Williams puts his creative spin on these "
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith."
      "shoes, which have all the clean, classicdetails of the beloved Stan Smith.",
      textAlign: TextAlign.justify,
      style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              extendBody: true,
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_sharp, color: Color(0xff216430))),
                backgroundColor: Colors.white,
                actions: [
                   Badge(
                     badgeColor: Color(0xff216430),
      badgeContent: Text('2',style: TextStyle(color:Colors.white)),
      position: BadgePosition.topEnd(top: 8, end: 5),
       animationType:BadgeAnimationType.fade,
    child: IconButton(icon: Icon(Icons.shopping_cart_outlined,color: Color(0xff216430)), onPressed: () {})
    ),
                ],
              ),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ////////////////// IMAGE CONTAINER /////////////////
                    Container(
                      height: 254,
                      decoration: new BoxDecoration(
                      
                      ),
                      child: ImageSlideshow(
    
            /// Width of the [ImageSlideshow].
            width: double.infinity,
    
            /// Height of the [ImageSlideshow].
            height: 200,
    
            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,
    
            /// The color to paint the indicator.
            indicatorColor: Colors.blue,
    
            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,
    
            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              Image.asset(
                'images/second.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/second.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/second.jpg',
                fit: BoxFit.cover,
              ),
            ],
    
            /// Called whenever the page in the center of the viewport changes.
            onPageChanged: (value) {
              print('Page changed: $value');
            },
    
            /// Auto scroll interval.
            /// Do not auto scroll with null or 0.
            autoPlayInterval: 3000,
          ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Title(
                                  color: Colors.black,
                                  child: Text(
                                    "Garden Mulch",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Text(
                                  "&120-&120",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff216430))),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sand of mulch trees plant",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          fontSize: 13, color: Colors.grey)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(width: 0.5, color: Colors.grey),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Feature",
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff216430),
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Feature",
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff216430),
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Feature",
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff216430),
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Description",
                                        style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SafeArea(
                                  child: Column(
                                    children: <Widget>[description],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              bottomNavigationBar: Container(
                height: 86,
                width: double.maxFinite, //set your width here
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 14,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                          
                            children: [
                             Count()
                            ],
                          ),
                        ],
                      ),
                      Column(children: [
                        Container(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CheckOut()));
                              },
                              child: Text("Add to cart"),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(180, 43),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                primary: Color(0xff216430),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ))),
    );
  }
}
class Count extends StatefulWidget {
  const Count({ Key? key }) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
   var count=1;
  @override
  Widget build(BuildContext context) {
    return Row(
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
                );
  }
}