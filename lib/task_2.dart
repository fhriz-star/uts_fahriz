import 'package:flutter/material.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key});

  final List<Map<String, dynamic>> dummyOrders = const [
    {
      'id': 32053,
      'category': 'Breakfast',
      'title': 'Chicken Thai Biriyani',
      'price': 60,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsXzSRijD34tpTir9tNIXWxDtvGfQI0CcsO8Lp5IPbKg&s=10',
      'status': 'pending',
    },
    {
      'id': 32054,
      'category': 'Lunch',
      'title': 'Beef Burger with Fries',
      'price': 45,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5zFMfA2iXCLk30vjH_VCHu6hsamV0aMrB9RXu5wsM_w&s=10',
      'status': 'pending',
    },
    {
      'id': 32055,
      'category': 'Dinner',
      'title': 'Creamy Pasta Carbonara',
      'price': 55,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAm3xBRN_Um_U5nXgsSB1bo2LSfEbClNKlkw4bZ9JTGQ&s=10',
      'status': 'pending',
    },
    {
      'id': 32056,
      'category': 'Dessert',
      'title': 'Berry Pancake Special',
      'price': 30,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzCYie_FspTW5hI1-S-LC2J3Z13YkJbkEGVBB3M0oScg&s=10',
      'status': 'pending',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Food Order List'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: dummyOrders.length,
        itemBuilder: (context, index) {
          final order = dummyOrders[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    order['imageUrl'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#${order['category']}',
                        style: const TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        order['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'ID: ${order['id']}',
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '\$${order['price']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        minimumSize: const Size(70, 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Done',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 6),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(70, 32),
                        side: const BorderSide(color: Colors.deepOrange),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
