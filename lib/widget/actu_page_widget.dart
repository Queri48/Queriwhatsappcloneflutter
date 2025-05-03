import 'package:flutter/material.dart';

class ActuPageWidget extends StatelessWidget {
  const ActuPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Actu Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}