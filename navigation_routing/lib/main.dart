import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/pixel': (context) => const PixelPage(),
        '/laptop': (context) => const LaptopPage(),
        '/tablet': (context) => const TabletPage(),
        '/pendrive': (context) => const PendrivePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                5, // Adjust the height to account for the app bar and padding
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        '/pixel',
                      );
                    },
                    child: Container(
                      width: 220,
                      height: 170,
                      color: Colors.blue[900],
                      child: const Center(
                        child: Text(
                          'pixel 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/pixel',
                      );
                    },
                    child: Container(
                      width: 206,
                      height: 170,
                      color: Colors.white,
                      child: const Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Pixel',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Pixel is the most featureful phone ever',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'Price: 800',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 194,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius
                border: Border.all(
                  color: const Color.fromARGB(255, 158, 158, 158),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/laptop');
                    },
                    child: Container(
                      width: 220,
                      height: 170,
                      color: Color.fromARGB(255, 13, 243, 13),
                      child: const Center(
                        child: Text(
                          'laptop',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/laptop'),
                    child: Container(
                      width: 206,
                      height: 170,
                      color: Colors.white,
                      child: const Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Laptop is most productive development tool',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'Price: 2000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 383,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/tablet'),
                    child: Container(
                      width: 220,
                      height: 170,
                      color: const Color.fromARGB(255, 235, 169, 4),
                      child: const Center(
                        child: Text(
                          'tablet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/tablet'),
                    child: Container(
                      width: 206,
                      height: 170,
                      color: Colors.white,
                      child: const Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Tablet',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Tablet is the most useful device for meeting',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'Price: 1500',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 570,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/pendrive'),
                    child: Container(
                      width: 220,
                      height: 170,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'pen drive',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/pendrive'),
                    child: Container(
                      width: 206,
                      height: 170,
                      color: Colors.white,
                      child: const Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Pendrive',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'iphone is the sylist phone ever',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                'Price: 100',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                  Icon(Icons.star_border,
                                      color: Color.fromARGB(255, 235, 108, 5)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PixelPage extends StatelessWidget {
  const PixelPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Pixel'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Column(children: [
        Container(
          width: 500,
          height: 400,
          color: Colors.blue[900],
          child: Center(
            child: Text(
              'pixel 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 110,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        Container(
            width: 500,
            height: 400,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Pixel ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Pixel is the most featureful phone ever',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Price: 800',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                  ],
                ),
              ),
            ])),
      ]),
    );
  }
}

class LaptopPage extends StatelessWidget {
  const LaptopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Laptop'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Column(children: [
        Container(
          width: 500,
          height: 400,
          color: Color.fromARGB(255, 13, 243, 13),
          child: Center(
            child: Text(
              'laptop1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 110,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        Container(
            width: 500,
            height: 400,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Laptop ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Laptop is the most productive development tool',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Price: 2000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                  ],
                ),
              ),
            ])),
      ]),
    );
  }
}

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Tablet'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Column(children: [
        Container(
          width: 500,
          height: 400,
          color: const Color.fromARGB(255, 235, 169, 4),
          child: Center(
            child: Text(
              'tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 110,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        Container(
            width: 500,
            height: 400,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Tablet ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Tablet is the most useful device for meeting',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Price: 1500',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star, color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star, color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star, color: Color.fromARGB(255, 235, 108, 5)),
                  ],
                ),
              ),
            ])),
      ]),
    );
  }
}

class PendrivePage extends StatelessWidget {
  const PendrivePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Pixel'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
      ),
      body: Column(children: [
        Container(
          width: 500,
          height: 400,
          color: Colors.red,
          child: Center(
            child: Text(
              'pen drive',
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        Container(
            width: 500,
            height: 400,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Pendrive ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'iphone is the stylist phone ever',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, top: 50),
                child: Text(
                  'Price: 100',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                    Icon(Icons.star_border,
                        color: Color.fromARGB(255, 235, 108, 5)),
                  ],
                ),
              ),
            ])),
      ]),
    );
  }
}
