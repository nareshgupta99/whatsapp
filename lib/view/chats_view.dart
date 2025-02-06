import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.qr_code),
            ),
            Padding(padding: const EdgeInsets.all(10.0), child: Icon(Icons.camera_alt)),
            Padding(padding: const EdgeInsets.all(10.0), child: Icon(Icons.more_vert)),
          ],
          backgroundColor: Colors.white10,
        ),
        bottomNavigationBar: configBottomBar());
  }

  Widget configBottomBar() {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          configBottomBarItem(icon: Icons.chat, text: "chat"),
          configBottomBarItem(icon: Icons.chat, text: "chat"),
          configBottomBarItem(icon: Icons.chat, text: "chat"),
          configBottomBarItem(icon: Icons.chat, text: "chat"),
        ],
      ),
    );
  }

  Widget configBottomBarItem({required IconData icon, required String text}) {
    return Column(
      children: [
        Icon(icon),
        Text(text)
      ],
    );
  }
}
