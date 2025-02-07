import 'package:flutter/material.dart';
import 'package:menu_tab/model/Chats.dart';
import 'package:menu_tab/view/custom_text_field.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<StatefulWidget> createState() => ChatsState();
}

class ChatsState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
      child: ListView(
        children: [
          CustomTextField(
            prefixIcon: Icons.search,
            suffixIconButton: Icons.camera,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  "https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8fHww",
                ),
                title: Text(chats[index].name),
                subtitle: Text(chats[index].name),
                trailing: Text("1:40pm"),
              );
            },
            itemCount: chats.length,
          )
        ],
      ),
    );
  }
}
