import 'package:flutter/material.dart';

class DetailsBackButton extends StatelessWidget {
  const DetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pop(context),
      tooltip: 'Exit detailed view',
      label: const Text("Back", style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.grey,
      icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
    );
  }
}
