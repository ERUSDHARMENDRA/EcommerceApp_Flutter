import 'package:flutter/material.dart';

// my imports
import 'package:ecommerc_eapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){},
          child: Text("Cart"),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {

              }),

        ],
      ),

      body: Cart_Products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Total Amount"),
                subtitle: Text("\$230"),
              ),
            ),

            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("Check Out", style: TextStyle(color: Colors.white),),
              color: Colors.red,
            ),
            ),
          ],
        ),
      ),

    );
  }
}
