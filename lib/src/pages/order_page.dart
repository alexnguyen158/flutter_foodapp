import 'package:flutter/material.dart';
import 'package:flutter_food_app/src/pages/sign_in_page.dart';
import 'package:flutter_food_app/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Your Food Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              OrderCard(),
              OrderCard(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 240.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          // ListTile(
          //   leading: Text(
          //     'Cart Total',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.grey),
          //   ),
          //   trailing: Text(
          //     '23.00',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // ),
          // ListTile(
          //   leading: Text(
          //     'Discount',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.grey),
          //   ),
          //   trailing: Text(
          //     '3.00',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // ),
          // ListTile(
          //   leading: Text(
          //     'Tax',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.grey),
          //   ),
          //   trailing: Text(
          //     '0.50',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // ),
          // SizedBox(height: 5.0,),
          // ListTile(
          //   leading: Text(
          //     'Subtotal',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.grey),
          //   ),
          //   trailing: Text(
          //     '26.50',
          //     style: TextStyle(
          //         fontSize: 16.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cart Total',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '23.00',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '3.00',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '0.50',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Divider(
            height: 40.0,
            color: Color(0XFFD3D3D3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '26.50',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SignInPage()));
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Proceed to Checkout',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
