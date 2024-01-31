import 'package:flutter/material.dart';
class WishListPage extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
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
        shrinkWrap: true,
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

            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,

            children: List.generate(items.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(

                        height: 150,
                        color: Colors.blue.withOpacity(0.2),

                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Background color of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          // Add to cart functionality
                          // Implement  logic here
                        },
                        child: Text('Add to Cart',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
