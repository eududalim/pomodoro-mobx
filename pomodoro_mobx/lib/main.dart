import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/stores/pomodoro_store.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        title: 'Pomodoro Mobx',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
