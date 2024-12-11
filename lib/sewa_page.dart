import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SewaPage(),
    );
  }
}

class SewaPage extends StatelessWidget {
  final List<Map<String, String>> cars = [
    {
      'name': 'Toyota Agya',
      'seats': '5 seats',
      'doors': '4 doors',
      'luggage': '2 Suitcase',
      'transmission': 'Automatic',
      'price': 'Rp 500.000 / 12 Hours',
      'image': 'assets/images/car1.jpg',
    },
    {
      'name': 'Honda Brio',
      'seats': '5 seats',
      'doors': '4 doors',
      'luggage': '2 Suitcase',
      'transmission': 'Automatic',
      'price': 'Rp 550.000 / 12 Hours',
      'image': 'assets/images/car2.jpg',
    },
    {
      'name': 'alpard',
      'seats': '5 seats',
      'doors': '4 doors',
      'luggage': '2 Suitcase',
      'transmission': 'Automatic',
      'price': 'Rp 600.000 / 12 Hours',
      'image': 'assets/images/car3.jpg',
    },
    {
      'name': 'buss',
      'seats': '5 seats',
      'doors': '4 doors',
      'luggage': '2 Suitcase',
      'transmission': 'Manual',
      'price': 'Rp 450.000 / 12 Hours',
      'image': 'assets/images/car4.jpg',
    },
    {
      'name': 'avanza',
      'seats': '5 seats',
      'doors': '4 doors',
      'luggage': '2 Suitcase',
      'transmission': 'Automatic',
      'price': 'Rp 650.000 / 12 Hours',
      'image': 'assets/images/car5.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Sewa Mobil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(
            name: cars[index]['name']!,
            seats: cars[index]['seats']!,
            doors: cars[index]['doors']!,
            luggage: cars[index]['luggage']!,
            transmission: cars[index]['transmission']!,
            price: cars[index]['price']!,
            imagePath: cars[index]['image']!,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final String name;
  final String seats;
  final String doors;
  final String luggage;
  final String transmission;
  final String price;
  final String imagePath;

  CarCard({
    required this.name,
    required this.seats,
    required this.doors,
    required this.luggage,
    required this.transmission,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.event_seat, size: 18),
                          SizedBox(width: 5),
                          Text(seats),
                          SizedBox(width: 10),
                          Icon(Icons.door_front_door, size: 18),
                          SizedBox(width: 5),
                          Text(doors),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.luggage, size: 18),
                          SizedBox(width: 5),
                          Text(luggage),
                          SizedBox(width: 10),
                          Icon(Icons.settings, size: 18),
                          SizedBox(width: 5),
                          Text(transmission),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Booking berhasil!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: Icon(Icons.check_circle),
                  label: Text('Booking Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
