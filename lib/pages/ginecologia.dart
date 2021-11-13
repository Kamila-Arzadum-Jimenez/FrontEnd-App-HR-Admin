import 'package:app_admi_register/utils/responsive.dart';

import 'package:app_admi_register/widgets/circle.dart';
import 'package:app_admi_register/widgets/ginecologia_form.dart';
import 'package:app_admi_register/widgets/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GinecologiaPage extends StatefulWidget {
 
  static const routeName = "ginecologia";
  @override
  _GinecologiaPageState createState() => _GinecologiaPageState();
}

class _GinecologiaPageState extends State<GinecologiaPage> {
  @override
  Widget build(BuildContext context) {
  final Responsive responsive= Responsive.of(context);

  
  final Size size = MediaQuery.of(context).size;


    return Scaffold(
      body: GestureDetector(
        onTap: (){ 
         FocusScope.of(context).unfocus();
        },
          child: SingleChildScrollView(
            
          child:  Container(
          width:double.infinity,
          height: responsive.heignt,
          color: Colors.white60,
          child: Stack(
            children: <Widget>[
              Positioned(
                right: -(size.width*0.5)*0.2,
                top: -(size.width*0.65)*0.3,
                child: Circle(
                  size: size.width*0.6,
                  colors: [
                    Colors.indigo.shade50,
                    Colors.indigo.shade50
                  ],
                  ),
                ),
              Positioned(
                right: -(size.width*0.5)*0.2,
                top: -(size.width*0.6)*0.25,
                child: Circle(
                  size: size.width*0.5,
                   colors: [
                    Colors.indigo.shade900,
                    Colors.indigo.shade900,
                  ],
                  ),
                ),


            Positioned(
                left: -(size.width*0.4)*0.1,
                top: (size.width*3.5)*0.5,
                child: Circle(
                  size: size.width*0.6,
                  colors: [
                    Colors.indigo.shade50,
                    Colors.indigo.shade50
                  ],
                  ),
                ),
              Positioned(
                left: -(size.width*0.4)*0.1,
                top: (size.width*3.6)*0.5,
                child: Circle(
                  size: size.width*0.5,
                   colors: [
                    Colors.indigo.shade900,
                    Colors.indigo.shade900,
                  ],
                  ),
                ),
   Positioned(
                      left: 130,
                      top: 200,
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
                                  "https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG.png",
                                  width: 120,
                                  height: 120,
                                ))),
                          ],
                        ),
                      ])),
Positioned(
                        left: 300,
                        top: 650,
                        child: SafeArea(
                          child: CupertinoButton(
                            color: Colors.indigoAccent[100],
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.arrow_back),
                            borderRadius: BorderRadius.circular(30),
                            onPressed: () {Navigator.pushNamed(context, "inicio");},
                          ),
                        )),
              Positioned(
             top:(size.width*0.3),
             left: (size.width*2.3)*0.1,
             
             child:Column(
               children:<Widget>[
                SizedBox(
                  height:30,
                ),
                Text(
                  
                 "𝗚𝗶𝗻𝗲𝗰𝗼𝗹𝗼𝗴𝗶𝗮",
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                 ), 
               ],
               
               
             )
             
             
              
              ),


              GinecologiaForm(),
      
            ],
            )
          ),
            
            
            )
         
      )
    );
  }
}