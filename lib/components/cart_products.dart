import 'package:ecommerc_eapp/pages/cart.dart';
import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/products/blazer1.jpeg",
      "price": 89,
      "Size": "M",
      "Color": "Red",
      "Quantity": 1,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/dress2.jpeg",
      "price": 95,
      "Size": "L",
      "Color": "Black",
      "Quantity": 1,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/dress2.jpeg",
      "price": 95,
      "Size": "L",
      "Color": "Black",
      "Quantity": 1,
    },

    {
      "name": "Jeans",
      "picture": "images/products/products/dress2.jpeg",
      "price": 95,
      "Size": "L",
      "Color": "Black",
      "Quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["Color"],
            cart_prod_qty: Products_on_the_cart[index]["Quantity"],
            cart_prod_size: Products_on_the_cart[index]["Size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //================== LEADING SECTION   =========================================
        leading: Image.asset(
          cart_prod_picture,
          width: 100.0,
          height: 80.0,
        ),


        //===================== TITLE SECTION   ======================
        title: Text(cart_prod_name),

        //==================== SUBTITLE SECTION   =========================
        subtitle: Column(
          children: [
            //ROW INSIDE COLUMN
            Row(
              children: [
                //this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                // =================== this section is for product color  ====================
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            // ====================== THIS SECTION IS FOR PRODUCT PRICE    ==============
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        trailing: Column(
          children: [
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text("$cart_prod_qty"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}


