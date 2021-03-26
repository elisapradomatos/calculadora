import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'AfterSplash.dart';



 main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState(){
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  SplashScreen(
            seconds: 5,
            navigateAfterSeconds: new AfterSplash(),
            title: new Text(
              'Calculadora da Elisa',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),),
            image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 100.0,
            onClick: ()=>print("Flutter Egypt"),
            loaderColor: Colors.red
        ),

    );
  }
}





