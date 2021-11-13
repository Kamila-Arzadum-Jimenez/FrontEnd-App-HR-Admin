import 'package:app_admi_register/pages/cardiologia.dart';
import 'package:app_admi_register/pages/general.dart';
import 'package:app_admi_register/pages/ginecologia.dart';
import 'package:app_admi_register/pages/home_page.dart';
import 'package:app_admi_register/pages/inicio.dart';
import 'package:app_admi_register/pages/pediatria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.routeName : (_)=> HomePage(),
        Inicio.routeName : (_)=> Inicio(),
        GinecologiaPage.routeName : (_)=> GinecologiaPage(),
        CardiologiaPage.routeName: (_)=> CardiologiaPage(),
        GeneralPage.routeName: (_)=> GeneralPage(),
        PediatriaPage.routeName: (_)=> PediatriaPage(),
      }
    );
  }
}

