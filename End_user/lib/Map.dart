
import 'package:flutter/material.dart';
import 'package:user_screen/Checkout.dart';
import 'demomap.dart';
import 'Home_page.dart';
import 'package:flutter/cupertino.dart';

class Location extends StatelessWidget {
  get onLocationChanged => null;

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
                "SearchDropOff Location",
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
             resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 550,
                    width: double.maxFinite,
                 child: 
                 LocationTracking(),
                  ),
                
                  Container( child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 35,bottom: 10),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Recent Location")),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xff216430)),
                              borderRadius: BorderRadius.circular(12)),
                          height: 55,
                          width:MediaQuery.of(context).size.width*0.82,
                          child: ListTile(
                            leading: Container(
                                width: 25,
                                height: 25,
                                child: Icon(
                                  Icons.location_on_sharp,
                                  color: Color(0xff216430),
                                  size: 22,
                                )),
                            title: Text('Street 1  Walton road',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                            trailing: Icon(Icons.chevron_right_outlined),
                          )),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                height: 55,
                                width:MediaQuery.of(context).size.width*0.82,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                                  },
                                  child: Text("Select Location"),
                                  style: ElevatedButton.styleFrom(
                                
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    primary: Color(0xff216430),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            
                width: double.maxFinite, //Set width
              )
                ],
              ),
            ),
          ));
  }

}


// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   Completer<GoogleMapController> _controller = Completer();

//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the lake!'),
//         icon: Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }

