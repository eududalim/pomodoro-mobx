import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    Key? key,
    required this.title,
    required this.valor,
  }) : super(key: key);

  final String title;
  final int valor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: Colors.red),
            ),
            Text(
              '$valor',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
