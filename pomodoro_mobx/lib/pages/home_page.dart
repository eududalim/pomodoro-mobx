import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_mobx/components/cronometro.dart';
import 'package:pomodoro_mobx/components/entrada_tempo.dart';
import 'package:pomodoro_mobx/stores/pomodoro_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
        appBar: AppBar(title: const Text('Pomodoro Timer')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(child: Cronometro()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    EntradaTempo(
                      title: 'Trabalho',
                      valor: store.tempoTrabalho,
                      incrementar: store.incrementarTempoTrabalho,
                      decrementar: store.decrementarTempoTrabalho,
                    ),
                    EntradaTempo(
                      title: 'Descanso',
                      valor: store.tempoDescanso,
                      incrementar: store.incrementarTempoDescanso,
                      decrementar: store.decrementarTempoDescanso,
                    ),
                  ],
                );
              }),
            ),
          ],
        ));
  }
}
