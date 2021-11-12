import 'package:app_admi_register/api/authentication_api.dart';
import 'package:app_admi_register/api/cardiologia_api.dart';
import 'package:flutter/material.dart';
import 'input_text.dart';
class CardiologiaForm extends StatelessWidget {

String nombre="", hora="", day="";
  GlobalKey<FormState> _formKeyC = GlobalKey();
  final CardiologiaAPI _authenticationAPI = CardiologiaAPI();

  _submit(){
   final isOk = _formKeyC.currentState!.validate();
  print("form isOk$isOk");
  if(isOk){
    _authenticationAPI.register(
         doctorn: nombre ,
         startTimen: hora,
          dayn: day);
    
  }
  }
  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 220,
      left:20,
      right:20,
      child: Form(

        key: _formKeyC,
          child: Column(
        
              children: <Widget>[
              InputText(
          keyboardType: TextInputType.emailAddress,
          label: "Doctor",
          validator: (text) {
                
                return null;
              },
          onChange: (text){
           nombre = text!;
          },
          
          ),
          
              InputText(
          keyboardType: TextInputType.emailAddress,
          label: "Horas",
          validator: (text) {
                
                return null;
              },
          onChange: (text){
           hora = text!;
          },
          
          ),

          InputText(
          keyboardType: TextInputType.emailAddress,
          label: "Dias",
          validator: (text) {
                
                return null;
              },
          onChange: (text){
           day = text!;
          },
          
          ),
            SizedBox(height: 50,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              
           
          onPressed: this._submit,
            //Navigator.pushNamed(context, "inicio");
     
          child: Text("𝗜𝗻𝗴𝗿𝗲𝘀𝗮𝗿"),
               
          style: ElevatedButton.styleFrom(primary: Colors.indigo[900],
          padding:EdgeInsets.symmetric(vertical: 15),
          ),
        
          ),
              )
              
              ],
            ),
        ),
    );
  }
}