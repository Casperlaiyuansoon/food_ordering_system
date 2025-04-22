import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.menu, size: 28),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.pink.shade50,
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('50%', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(height: 8),
                            Text('offer is only for today, so place order right now.',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset('assets/images/burger.png', height: 190), // Replace with actual image asset
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      categoryItem('Burger',  true),
                      categoryItem('Pizza', false),
                      categoryItem('Sweets', false),
                      categoryItem('Drinks', false),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    foodCard('Chicken Burger', 'double chicken', 'Rm8.00', 'assets/images/burger.png', 4.9),
                    const SizedBox(width: 10),
                    foodCard('Cheese Burger', 'double cheese', 'Rm7.50', 'assets/images/burger.png', 4.8),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.no_food), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget categoryItem(String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? Colors.red : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage('assets/${title.toLowerCase()}.png'),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(color: selected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }

  Widget foodCard(String title, String subtitle, String price, String imagePath, double rating) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const Icon(Icons.favorite_border, color: Colors.red),
              ],
            ),
            const SizedBox(height: 8),
            Image.asset(imagePath, height: 60),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 4),
            Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
