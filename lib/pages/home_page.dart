
import 'package:app_admi_register/utils/responsive.dart';
import 'package:app_admi_register/widgets/circle.dart';
import 'package:app_admi_register/widgets/login_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 
  static const routeName = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
             top:(size.width*0.6),
             left: (size.width*1.5)*0.1,
             
             child:Column(
               children:<Widget>[
                SizedBox(
                  height:30,
                ),
                Text(
                  
                 "𝗜𝗻𝗶𝗰𝗶𝗮𝗿 𝗦𝗲𝘀𝗶𝗼𝗻",
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                 ), 
               ],
               
               
             )
             
             
              
              ),


              LoginForm(),
      
            ],
            )
          ),
            
            
            )
         
      )
    );
  }
}