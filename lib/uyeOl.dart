import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

void main() {
  runApp(MaterialApp(

    home: uyeOl(),
  ));
}

class uyeOl extends StatelessWidget {
  @override
  String inputEmail;
  String inputUser;
  String inputPassword1;
  String inputPassword2;

  final _degerKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Üye Ol'),
        ),
        body: Form (

            key: _degerKey,

            child:Padding(

                padding: const EdgeInsets.all(15.0),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    TextFormField(

                        decoration: InputDecoration(
                          hintText: "Email Giriniz",
                          labelText: "Email",
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
                          hintText: "Kullanıcı Adı",
                          labelText: "Kullanıcı Adı",
                          labelStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(),

                        ),

                        onSaved: (value){

                          inputUser = value;

                        }
                    ),

                    SizedBox(height: 20,),

                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Şifre Giriniz",
                          labelText: "Şifre",
                          labelStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(),

                        ),

                        onSaved: (value){
                          inputPassword1 = value;

                        }
                    ),

                    SizedBox(height: 20,),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Şifre Giriniz",
                          labelText: "Şifre Tekrar",
                          labelStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(),

                        ),

                        onSaved: (value) {
                          inputPassword2 = value;
                        }
                    ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    RaisedButton(
                    child: Text("Kaydol") ,


                    onPressed: () {
                      _degerKey.currentState.save();

                      if ((inputPassword1==inputPassword2) && inputPassword1!="" && inputPassword2!="" )
                      {
                        debugPrint("Email: $inputEmail");
                        debugPrint("Şifre: $inputPassword1");
                        Navigator.push(context,MaterialPageRoute(builder: (context) => loginPage()),);


                      }
                      else{
                        debugPrint("Şifreler Yanlış Girildi");
                      }
                    },
                  ),
                    RaisedButton(
                      child: Text("Vazgeç") ,


                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => loginPage()),);
                      },
                    ),
                  ]
                  ),

                  ],
                )
            )
        )
    );
  }
}
