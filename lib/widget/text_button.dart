import 'package:flutter/material.dart';

class TextBottun extends StatelessWidget {
  final String text;
  final VoidCallback clickCallback;
  const TextBottun({Key? key, required this.text, required this.clickCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => clickCallback(),
      child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.red,
            ),
          )),
    );
  }
}
