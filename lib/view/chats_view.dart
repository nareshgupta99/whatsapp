import 'package:flutter/material.dart';
import 'package:menu_tab/view/custom_text_field.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<StatefulWidget> createState() => ChatsState();
}

const List<Record> users=[
  ()
]

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
          ListView.builder(itemBuilder: (context, index){

          })
        ],
      ),
    );
  }
}
