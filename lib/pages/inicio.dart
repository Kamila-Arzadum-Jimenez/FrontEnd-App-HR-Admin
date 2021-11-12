import 'package:app_admi_register/utils/responsive.dart';
import 'package:app_admi_register/widgets/circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);
  static const routeName = "inicio";

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
          onTap: () {
            //FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
                width: double.infinity,
                height: responsive.heignt,
                color: Colors.white60,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      right: -(size.width * 0.5) * 0.2,
                      top: -(size.width * 0.95) * 0.3,
                      child: Circle(
                        size: size.width * 0.6,
                        colors: [Colors.indigo.shade50, Colors.indigo.shade50],
                      ),
                    ),
                    Positioned(
                      right: -(size.width * 0.5) * 0.2,
                      top: -(size.width * 1) * 0.25,
                      child: Circle(
                        size: size.width * 0.5,
                        colors: [
                          Colors.indigo.shade900,
                          Colors.indigo.shade900,
                        ],
                      ),
                    ),
                    Positioned(
                      left: -(size.width * 0.4) * 0.1,
                      top: (size.width * 3.5) * 0.5,
                      child: Circle(
                        size: size.width * 0.6,
                        colors: [Colors.indigo.shade50, Colors.indigo.shade50],
                      ),
                    ),
                    Positioned(
                      left: -(size.width * 0.4) * 0.1,
                      top: (size.width * 3.6) * 0.5,
                      child: Circle(
                        size: size.width * 0.5,
                        colors: [
                          Colors.indigo.shade900,
                          Colors.indigo.shade900,
                        ],
                      ),
                    ),
                    Positioned(
                        top: (size.width * 0.3),
                        left: (size.width * 2.3) * 0.1,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "𝗘𝘀𝗽𝗲𝗰𝗶𝗮𝗹𝗶𝗱𝗮𝗱𝗲𝘀",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        left: 300,
                        top: 650,
                        child: SafeArea(
                          child: CupertinoButton(
                            color: Colors.indigoAccent[100],
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.arrow_back),
                            borderRadius: BorderRadius.circular(30),
                            onPressed: () {Navigator.pushNamed(context, "home");},
                          ),
                        )),
                    Positioned(
                        left: 50,
                        top: 250,
                        child: Column(children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black26,
                                          offset: Offset(0, 20)),
                                    ],
                                  ),
                                  child: ClipOval(
                                      child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/387/387577.png",
                                    width: 120,
                                    height: 120,
                                  ))),
                            ],
                          ),
                        ])),
                    //pediatria
                    Positioned(
                        left: 220,
                        top: 250,
                        child: Column(children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black26,
                                          offset: Offset(0, 20)),
                                    ],
                                  ),
                                  child: ClipOval(
                                      child: Image.network(
                                    "https://cdn-cidfa.nitrocdn.com/MJxosxYaqvkFSDYPHiyHzJnzLtsSfqpT/assets/static/optimized/wp-content/uploads/2021/06/7064c722c697a4e4c60f46c793127155.icono-Pediatri%CC%81a.png",
                                    width: 120,
                                    height: 120,
                                  ))),
                            ],
                          ),
                        ])),
//ginecologia:
                    Positioned(
                        left: 50,
                        top: 450,
                        child: Column(children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black26,
                                          offset: Offset(0, 20)),
                                    ],
                                  ),
                                  child: ClipOval(
                                      child: Image.network(
                                    "https://png.pngtree.com/png-clipart/20201208/original/pngtree-cartoon-hand-drawn-gynecology-explaining-plant-illustration-png-image_5512059.jpg",
                                    width: 120,
                                    height: 120,
                                  ))),
                            ],
                          ),
                        ])),
//General
                    Positioned(
                        left: 220,
                        top: 450,
                        child: Column(children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black26,
                                          offset: Offset(0, 20)),
                                    ],
                                  ),
                                  child: ClipOval(
                                      child: Image.network(
                                    "https://w7.pngwing.com/pngs/754/304/png-transparent-medicine-health-care-physician-general-medical-examination-health-blue-text-service.png",
                                    width: 120,
                                    height: 120,
                                  ))),
                            ],
                          ),
                        ])),

                    Positioned(
                        bottom: 350,
                        left: 60,
                        child: Form(
                            child: Column(children: <Widget>[
                          ElevatedButton(
                            onPressed: ()  { Navigator.pushNamed(context, "cardiologia");},
               
                            child: Text("Cardiologia"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(
                                  vertical: 17, horizontal: 10),
                            ),
                          ),
                        ]))),


                         Positioned(
                        bottom: 350,
                        left: 240,
                        child: Form(
                            child: Column(children: <Widget>[
                          ElevatedButton(
                            onPressed: () {Navigator.pushNamed(context, "pediatria");},
                            child: Text("Pediatria"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(
                                  vertical: 17, horizontal: 12),
                            ),
                          ),
                        ]))),

                        Positioned(
                        bottom: 150,
                        left: 60,
                        child: Form(
                            child: Column(children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "ginecologia");
                            },
                            child: Text("Ginecologia"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(
                                  vertical: 17, horizontal: 12),
                            ),
                          ),
                        ]))),

                        Positioned(
                        bottom: 150,
                        left: 210,
                        child: Form(
                            child: Column(children: <Widget>[
                          ElevatedButton(
                            onPressed: () {Navigator.pushNamed(context, "general");},
                            child: Text("Medicina General"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(
                                  vertical: 17, horizontal: 12),
                            ),
                          ),
                        ]))),
                  ],
                )),
          )),
    );
  }
}
