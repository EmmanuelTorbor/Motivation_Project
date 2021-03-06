import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        onPrimary: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 12),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onClicked,
    );
  }
}
