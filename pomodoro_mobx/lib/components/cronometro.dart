import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '25:00',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CronometroBotao(text: 'Iniciar', icon: Icons.play_arrow),
              ),
              /* 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CronometroBotao(text: 'Parar', icon: Icons.stop),
              ), */
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CronometroBotao(text: 'Reiniciar', icon: Icons.refresh),
              )
            ],
          )
        ],
      ),
    );
  }
}
