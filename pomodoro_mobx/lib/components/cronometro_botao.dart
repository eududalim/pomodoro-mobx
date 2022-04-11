import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao(
      {Key? key, required this.text, required this.icon, this.click})
      : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text)
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        textStyle: TextStyle(fontSize: 25),
      ),
    );
  }
}
