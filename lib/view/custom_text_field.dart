import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.prefixIcon, this.suffixIconButton, this.prefixIconButton, this.prefixIconFunction, this.suffixIconFunction});

  final IconData? prefixIcon;
  final IconData? suffixIconButton;
  final IconData? prefixIconButton;
  final Function()? prefixIconFunction;
  final Function()? suffixIconFunction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(),
        fillColor: const Color.fromARGB(75, 179, 173, 173),
        filled: true,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: prefixIconButton == null ? false : true,
              child: IconButton(onPressed: () {}, icon: Icon(prefixIconButton)),
            ),
            Visibility(
              visible: prefixIcon == null ? false : true,
              child: Padding(
                padding:  EdgeInsets.only(left: prefixIconButton == null ? 9 : 0),
                child: Icon(prefixIcon),
              ),
            )
          ],
        ),
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(suffixIconButton)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)), borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)), borderSide: BorderSide(color: const Color.fromARGB(255, 187, 185, 185))),
        hintText: "Ask Meta AI or Search",
      ),
    );
  }
}
