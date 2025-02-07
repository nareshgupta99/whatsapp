import 'package:flutter/material.dart';
import 'package:menu_tab/view/chats_view.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  State<StatefulWidget> createState() => BottomState();
}

class BottomState extends State<BottomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update_rounded), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined), label: "Calls"),
        ],
      ),
      body: ChatsView(),
    );
  }
}
