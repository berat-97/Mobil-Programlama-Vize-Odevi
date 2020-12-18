import 'package:flutter/material.dart';
import 'package:flutter_app/anaSayfa.dart';
import 'package:flutter_app/sifremiUnuttum.dart';
import 'package:flutter_app/uyeOl.dart';

void main() {
  runApp(MaterialApp(

    home: loginPage(),
  ));
}

class loginPage extends StatelessWidget {
  @override

  String email ="demo";
  String passWord ="demo";
  String inputEmail;
  String inputPassword;

  final _degerKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Form (

        key: _degerKey,

        child:Padding(

          padding: const EdgeInsets.all(15.0),


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            TextFormField(

              decoration: InputDecoration(
              hintText: "Kullanıcı Adı",
              labelText: "Kullanıcı Adı",
              labelStyle: TextStyle(color: Colors.blue),
              border: OutlineInputBorder(),

              ),

            onSaved: (value){
            inputEmail = value;

            }
              ),

             SizedBox(height: 20,),
            TextFormField(
            obscureText: true,
            decoration: InputDecoration(
            hintText: "Şifre",
            labelText: "Şifre",
            labelStyle: TextStyle(color: Colors.blue),
            border: OutlineInputBorder(),

              ),

          onSaved: (value) {
          inputPassword = value;
          }
          ),

            Row(

             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              MaterialButton(

                child: Text("Üye Ol"),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => uyeOl()),
                  );

                },

           ),

                MaterialButton(

                    child: Text("Şifremi Unuttum"),
                  onPressed: () {

                 Navigator.push(context,MaterialPageRoute(builder: (context) => sifremiUnuttum()),
                  );
                 },

                ),

              ],
            ),

             RaisedButton(
                 child: Text("Giriş") ,


                onPressed: () {
                _degerKey.currentState.save();

                if (email==inputEmail && passWord==inputPassword)
               {
                Navigator.push(context,MaterialPageRoute(builder: (context) => anaSayfa()),);
            }
              else{
              debugPrint("Yanlış Giriş");
              }
            },
            )
            ],
          )
        )
      )
    );
  }
}
