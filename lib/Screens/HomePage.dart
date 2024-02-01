import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

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
              icon: Icon(Icons.favorite_sharp, color: Colors.white),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo Image
            Image.asset(
              'assets/logo.PNG',
              fit: BoxFit.contain,
              height: 80,
            ),
            // Search Box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Image Slider with arrows and dot indicators
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  items: [
                    Image.asset('assets/slider_image.png'),
                    Image.asset('assets/slider_image.png'),
                    Image.asset('assets/slider_image.png'),
                  ],
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      if (_currentPageIndex > 0) {
                        setState(() {
                          _currentPageIndex--;
                        });
                      }
                    },
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      if (_currentPageIndex < 2) {
                        setState(() {
                          _currentPageIndex++;
                        });
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPageIndex == i
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Products Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Product Grid
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      // Product Item
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 100,
                              color: Colors.blue.withOpacity(0.5),
                              // Placeholder for product image
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue.withOpacity(0.5),
                              child: Text(
                                '\$50', // Example price
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Repeat for other products...
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
