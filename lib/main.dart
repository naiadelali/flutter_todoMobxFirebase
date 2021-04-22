import 'package:flutter/material.dart';
import 'package:flutter_todo/components/widgets/avatar_widget.dart';
import 'package:flutter_todo/themes/app_theme.dart';

import 'components/widgets/button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          TDButton(
            text: 'Teste',
            image: 'assets/images/google.png',
            callback: () {},
          ),
          SizedBox(
            height: 40,
          ),
          TDAvatar(
            path:
                'https://thumbs.dreamstime.com/b/retrato-f%C3%AAmea-da-mulher-do-avatar-do-%C3%ADcone-do-perfil-ocasional-58249368.jpg',
            width: 120,
          )
        ],
      ),
    );
  }
}
