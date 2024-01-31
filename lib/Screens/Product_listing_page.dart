import 'package:flutter/material.dart';

class Product_listing_page extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.3), // Transparent blue color

        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_bag, color: Colors.white),
              onPressed: () {
                // Handle box icon tap
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                // Handle open box icon tap
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Logo Image
          Image.asset(
            'assets/logo.PNG',
            fit: BoxFit.contain,
            height: 100,
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // Disable scrolling for GridView
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,

            children: List.generate(items.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Adjust image height as needed
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue.withOpacity(0.4),

                    ),
                    SizedBox(height: 20),
                    // Text widget outside of the blue box
                    Text(
                      items[index], // Display item name
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),

                    ),
                Text(
                  "description", // Display item name
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
