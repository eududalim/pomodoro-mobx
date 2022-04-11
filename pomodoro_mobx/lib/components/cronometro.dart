import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_mobx/components/cronometro_botao.dart';
import 'package:pomodoro_mobx/stores/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Hora de trabalhar',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Observer(builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                if (!store.iniciado)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CronometroBotao(
                      text: 'Iniciar',
                      icon: Icons.play_arrow,
                      click: store.iniciar,
                    ),
                  ),
                if (store.iniciado)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CronometroBotao(
                      text: 'Parar',
                      icon: Icons.stop,
                      click: store.parar,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CronometroBotao(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    click: store.reiniciar,
                  ),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
