import 'package:ar_navigation/pages/shop_detail_page.dart';
import 'package:flutter/material.dart';

import 'fair_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> fairImages = [
    'images/fairs/ikm.jpg',
    'images/fairs/ikm.jpg',
    'images/fairs/ikm.jpg',
  ];

  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.85, // Görünür alanın yüzdesi
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              const Row(
                children: [
                  SizedBox(width: 35.0),
                  Text(
                    'Welcome!',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  /*const Spacer(),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(width: 7.0),
                  Container(
                    width: 80.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(width: 20.0),*/
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          prefixIcon:
                          Icon(Icons.search, color: Colors.grey[400]),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10.0),

                  Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.amber,
                    ),
                    child: const Center(
                      child: Icon(Icons.tune, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  SizedBox(width: 15.0),
                  Text('Populer Fairs'),
                ],
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 260.0,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: fairImages.length,
                  itemBuilder: (context, index) {
                    final imageUrl = fairImages[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FairDetailPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(15.0)),
                                  child: Image.asset(
                                    imageUrl,
                                    width: 350.0,
                                    height: 170.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                Text(
                                  'Fair ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                Text(
                                  'Location ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30.0),
              const Row(
                children: [
                  SizedBox(width: 15.0),
                  Text('Populer Shops'),
                ],
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 265.0,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: fairImages.length,
                  itemBuilder: (context, index) {
                    final imageUrl = fairImages[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ShopDetailPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(15.0)),
                                  child: Image.asset(
                                    imageUrl,
                                    width: 350.0,
                                    height: 170.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                Text(
                                  'Shop ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                Text(
                                  'Location ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
