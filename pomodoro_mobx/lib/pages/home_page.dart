import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/components/cronometro.dart';
import 'package:pomodoro_mobx/components/entrada_tempo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pomodoro Timer')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Cronometro()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(title: 'Trabalho', valor: 25),
                  EntradaTempo(title: 'Descanso', valor: 5),
                ],
              ),
            ),
          ],
        ));
  }
}
