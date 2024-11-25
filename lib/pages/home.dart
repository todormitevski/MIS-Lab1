import 'package:flutter/material.dart';
import 'package:mobis_lab1/models/clothing_item_model.dart';

import '../widgets/clothes_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ClothingItem> clothes = List.generate(5, (index) =>
      ClothingItem(
        id: index + 1,
        name: 'Clothing item $index',
        description: 'Description $index',
        image: 'assets/images/clothing_item${index + 1}.jpg',
        price: (index + 1) * 100,
      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('213165', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ClothesGrid(clothes: clothes),
    );
  }
}