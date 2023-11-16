import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Olahraga'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          SportCategoryCard(category: 'Sepak Bola'),
          SportCategoryCard(category: 'Badminton'),
          SportCategoryCard(category: 'Voli'),
          SportCategoryCard(category: 'Basket'),
          SportCategoryCard(category: 'Bela Diri'),
          SportCategoryCard(category: 'Atletik'),
        ],
      ),
    );
  }
}

class SportCategoryCard extends StatelessWidget {
  final String category;

  SportCategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.blue, // Warna latar belakang biru
      child: InkWell(
        onTap: () {
          // Tambahkan logika untuk menavigasi ke halaman kategori yang sesuai
          // Misalnya, Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //   return SportCategoryDetailPage(category: category);
          // });
        },
        child: Center(
          child: Text(
            category,
            style: TextStyle(fontSize: 18, color: Colors.white), // Teks berwarna putih
          ),
        ),
      ),
    );
  }
}
