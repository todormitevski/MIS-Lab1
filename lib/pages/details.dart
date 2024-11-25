import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobis_lab1/models/clothing_item_model.dart';
import 'package:mobis_lab1/widgets/details_back_button.dart';
import 'package:mobis_lab1/widgets/details_view.dart';

class Details extends StatelessWidget {
  const Details({ super.key });

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as ClothingItem;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailsView(item: arguments)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailsBackButton(),
    );
  }
}