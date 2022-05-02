import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key,this.hintText = ""}) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hintText),
        TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Color.fromRGBO(229, 235, 240, 1),
            prefixIcon: Icon(
              Icons.person,
              color: Color.fromRGBO(89, 60, 161, 1),
            ),
          ),
        ),
      ],
    );
  }
}
