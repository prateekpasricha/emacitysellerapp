import 'package:flutter_traveler_profile_app/SizeConfig.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EMACITY"),
      backgroundColor: Colors.black87 ),
      backgroundColor: Color(0xffF8F8FA),
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[

          Container(
            color: Colors.black87,
            height: 40 * SizeConfig.heightMultiplier,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0,
                  right: 30.0,
                  top: 10 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 11 * SizeConfig.heightMultiplier,
                        width: 22 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/shop.png"))
                        ),
                      ),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("SHOP 1", style: TextStyle(
                              color: Colors.white,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 1 * SizeConfig.heightMultiplier,),
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 2 * SizeConfig.widthMultiplier,),
                                  Text("Addresss", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 1.7 * SizeConfig.textMultiplier,
                                  ),),
                                ],
                              ),
                              SizedBox(width: 7 * SizeConfig.widthMultiplier,),
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 2 * SizeConfig.widthMultiplier,),
                                  Text("PHONE NO.", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 1.7 * SizeConfig.textMultiplier,
                                  ),),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EDIT PROFILE", style: TextStyle(
                              color: Colors.white60,
                              fontSize: 1.8 * SizeConfig.textMultiplier
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, top: 3 * SizeConfig.heightMultiplier),
                      child: Text("Orders", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.2 * SizeConfig.textMultiplier
                      ),),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Container(
                      height: 37 * SizeConfig.heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _favoriteCard("assets/chip.png"),
                          _favoriteCard("assets/oreo.png"),
                          SizedBox(width: 10 * SizeConfig.widthMultiplier,),
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Row(
                        children: <Widget>[
                          Text("Inventory", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.2 * SizeConfig.textMultiplier
                          ),),
                          Spacer(),
                          Text("View All", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 1.7 * SizeConfig.textMultiplier
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Container(
                      height: 20 * SizeConfig.heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _favoriteCard("assets/chip.png"),
                          SizedBox(width: 10 * SizeConfig.widthMultiplier,)
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,)
                  ],
                ),
              ),
            ),
          )

        ],
      ),
      drawer: Drawer(child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Seller X'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Inventory'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Orders'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),ListTile(
            title: Text('Performance'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),ListTile(
            title: Text('Reports'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),ListTile(
            title: Text('Delivery'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),ListTile(
            title: Text('Notification'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),ListTile(
            title: Text('Language'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
      ),
    );
  }

  _myAlbumCard(String asset1, String asset2, String asset3, String asset4, String more, String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Container(
        height: 37 * SizeConfig.heightMultiplier,
        width: 60 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey, width: 0.2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset1, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset2, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                ],
              ),
              SizedBox(height: 1 * SizeConfig.heightMultiplier,),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(asset3, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                  ),
                  Spacer(),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(asset4, height: 27 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover,),
                      ),
                      Positioned(
                        child: Container(
                          height: 27 * SizeConfig.imageSizeMultiplier,
                          width: 27 * SizeConfig.imageSizeMultiplier,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text(more, style: TextStyle(
                              color: Colors.white,
                              fontSize: 2.5 * SizeConfig.textMultiplier,
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10.0, top: 2 * SizeConfig.heightMultiplier),
                child: Text(name, style: TextStyle(
                    color: Colors.black,
                    fontSize: 2 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  _favoriteCard(String s) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,),
      ),
    );
  }
}
