import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:ecommerc_eapp/components/horizontal_listview.dart';
import 'package:ecommerc_eapp/components/products.dart';
import 'package:ecommerc_eapp/pages/product_details.dart';
import 'package:ecommerc_eapp/pages/cart.dart';
import 'package:ecommerc_eapp/pages/home.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    //imagecarousel
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.orange,
        dotBgColor: Colors.transparent,
      ),
    );

//endof imagecarousel

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){},
          child: Text("ShapeYou"),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header of drawer
            UserAccountsDrawerHeader(
              accountName: Text("KodeMafia"),
              accountEmail: Text("CodeMafia008@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white38,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow
              ),
            ),

            //body of drawer header
            //Fist Item
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home,color: Colors.red,),
              ),
            ),
            //Endof First item

            //Second item
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.account_circle_outlined,color: Colors.red,),
              ),
            ),

            //third
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
            ),

            //fourth
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            //fifth
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),

            Divider(),

            //sixth
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,color: Colors.blueAccent,),
              ),
            ),

            //seventh
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),


          ],
        ),
      ),

      body: Column(
        children: [
          //image carousel
          //image_carousel,
          //endof imagecarousel

          //padding widget
          Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //endof padding widget

          //horizontal listview
          HorizontalList(),
          //endof horizontal listview

          //padding widget
          Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Recent Products",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),

          //Grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
