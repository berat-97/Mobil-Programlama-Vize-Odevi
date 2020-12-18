import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
class sifremiUnuttum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String inputEmail;

    final _degerKey = GlobalKey<FormState>();
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Şifremi Unuttum'),
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
                          hintText: "E-mail",
                          labelText: "E-mail",
                          labelStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(),

                        ),

                        onSaved: (value){
                          inputEmail=value;
                        }
                    ),
                    RaisedButton(
                      child: Text("Gönder") ,


                      onPressed: () {

                        _degerKey.currentState.save();
                        debugPrint("$inputEmail adresine şifre gönderildi");
                        Navigator.push(context,MaterialPageRoute(builder: (context) => loginPage()),);


                      },
                    ),
                  ],
                )
            )
        )
    );
  }
}