import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant/theme_constant.dart';
import 'package:whatsapp_clone/widget/layout_widget.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      home: const LayoutWidget(),
      debugShowCheckedModeBanner: false,
      theme: themeData,
      darkTheme: darkThemeData,
    );
  }
}
