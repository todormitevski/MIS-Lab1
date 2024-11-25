import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobis_lab1/models/clothing_item_model.dart';

class DetailsView extends StatelessWidget {
  final ClothingItem item;

  const DetailsView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            item.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: 250,
          ),
        ),
        const SizedBox(height: 16),
        // name
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            item.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 8),
        // price
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '\$${item.price.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // desc
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            item.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Purchased ${item.name}!')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            ),
            child: const Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}