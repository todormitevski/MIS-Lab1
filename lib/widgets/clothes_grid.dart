import 'package:flutter/cupertino.dart';
import 'package:mobis_lab1/models/clothing_item_model.dart';
import 'package:mobis_lab1/widgets/clothing_item_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<ClothingItem> clothes;
  const ClothesGrid({super.key, required this.clothes});

  @override
  State<StatefulWidget> createState() => _ClothesGridState();
}

class _ClothesGridState extends State<ClothesGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        semanticChildCount: 250,
        childAspectRatio: 200/300,
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        children: widget.clothes.map((item) =>
          ClothingItemCard(
              id: item.id,
              name: item.name,
              description: item.description,
              image: item.image,
              price: item.price)
        ).toList(),
    );
  }

}