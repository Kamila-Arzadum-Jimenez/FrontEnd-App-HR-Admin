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
          label: "๐ก๐ผ๐บ๐ฏ๐ฟ๐ฒ ๐ฑ๐ฒ ๐จ๐๐๐ฎ๐ฟ๐ถ๐ผ",
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
              label: "๐๐ผ๐ป๐๐ฟ๐ฎ๐๐ฒรฑ๐ฎ",
              onChange: (text){
            password = text!;
              },
              validator: (text) {
                
                return null;
              },
              ),
              ),
              TextButton(
                
                child: Text("ยฟOlvidaste tu contraseรฑa?",
                
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
     
          child: Text("๐๐ป๐ด๐ฟ๐ฒ๐๐ฎ๐ฟ"),
               
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