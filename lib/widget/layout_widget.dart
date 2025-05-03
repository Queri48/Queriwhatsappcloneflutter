import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:whatsapp_clone/widget/actu_page_widget.dart';
import 'package:whatsapp_clone/widget/call_page_widget.dart';
import 'package:whatsapp_clone/widget/community_page_widget.dart';
import 'package:whatsapp_clone/widget/home_page_widget.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp Clone',
          style: TextStyle(
            color: switch (Theme.of(context).brightness) {
              Brightness.dark => Theme.of(context).colorScheme.onSurface,
              Brightness.light => Theme.of(context).colorScheme.primary,
            },
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Symbols.photo_camera, weight: 2000),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Symbols.search, weight: 2000),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Symbols.more_vert,
              weight: 200,
              grade: 300,
              opticalSize: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        destinations: [
          NavigationDestination(
            icon: Icon(Symbols.chat, fill: 0),
            selectedIcon: Icon(Symbols.chat, fill: 1),
            label: 'Discussions',
          ),
          NavigationDestination(
            icon: Icon(Symbols.radio_button_checked, fill: 0),
            selectedIcon: Icon(Symbols.radio_button_checked, fill: 1),
            label: 'Actus',
          ),
          NavigationDestination(
            icon: Icon(Symbols.groups, fill: 0),
            selectedIcon: Icon(Symbols.groups, fill: 1),
            label: 'Communautés',
          ),
          NavigationDestination(
            icon: Icon(Symbols.call, fill: 0),
            selectedIcon: Icon(Symbols.call, fill: 1),
            label: 'Appels',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        child: Icon(Symbols.add_comment, fill: 0, weight: 2000),
      ),
      body: IndexedStack(
        children: [
          HomePageWidget(),
          ActuPageWidget(),
          CommunityPageWidget(),
          CallPageWidget(),
        ],
      ),
    );
  }
}
