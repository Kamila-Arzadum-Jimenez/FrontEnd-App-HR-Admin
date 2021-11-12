import 'package:app_admi_register/api/authentication_api.dart';
import 'package:flutter/material.dart';
import 'input_text.dart';
class LoginForm extends StatelessWidget {

String email="", password="";
  GlobalKey<FormState> _formKey = GlobalKey();
  final AuthenticationAPI _authenticationAPI = AuthenticationAPI();

  _submit(){
    
   final isOk = _formKey.currentState!.validate();
  print("form isOk$isOk");
  if(isOk){
    _authenticationAPI.register(
      username: email,
     password: password,);
  }
  
  }
  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 220,
      left:20,
      right:20,
      child: Form(

        key: _formKey,
          child: Column(
        
              children: <Widget>[
              InputText(
          keyboardType: TextInputType.emailAddress,
          label: "𝗡𝗼𝗺𝗯𝗿𝗲 𝗱𝗲 𝗨𝘀𝘂𝗮𝗿𝗶𝗼",
          validator: (text) {
                
                return null;
              },
          onChange: (text){
           email = text!;
          },
          
          ),
          
              Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black12,
              )
            )
            ),
          child: Row(
            children: <Widget>[
              Expanded(child: InputText(
              obscureText: true,
              borderEnable: false ,
              label: "𝗖𝗼𝗻𝘁𝗿𝗮𝘀𝗲ñ𝗮",
              onChange: (text){
            password = text!;
              },
              validator: (text) {
                
                return null;
              },
              ),
              ),
              TextButton(
                
                child: Text("¿Olvidaste tu contraseña?",
                
                 style: TextStyle(
                   color: Colors.black87,
                  fontWeight: FontWeight.bold
                 )
                ),
               
                
                onPressed: (){},
                )
               
            ],
          )
              ),
            SizedBox(height: 50,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              
           
          onPressed: () async {
                  
                  
                  this._submit;
                  //print("guardado");
                  Navigator.pushNamed(context, 'inicio');
                },
     
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