import 'package:flutter/material.dart';

import 'Screens/Contact.dart';
import 'Screens/HomePage.dart';
import 'Screens/Product_listing_page.dart';
import 'Screens/WishListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cart Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Product_listing_page(),
      //home: WishListPage(),
      home:HomePage(),
    );
  }
}

