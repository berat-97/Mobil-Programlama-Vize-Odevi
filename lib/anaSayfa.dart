import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new anaSayfa());



class anaSayfa extends StatefulWidget {
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<anaSayfa> {

  double _girilensayi = 0;
  String _girilensayiSS;
  String _girilensayininKaresiS="---";
  double _girilensayininKaresiD;
  double _girilensayininKupuD;
  String _girilensayininKupuS="---";
  double _girilensayininKokuD;
  String _girilensayininKokuS="---";
  static const color = const Color(0xFFFF7A00);
  static const colorButon = const Color(0xFF4DA845);
  static const colorButon2 = const Color(0xFFFF0303);

  void _hesaplama() {
    _girilensayiSS=_sayiAl.text;
    _girilensayi=double.parse(_girilensayiSS);
    _girilensayininKaresiD = _girilensayi*_girilensayi;
    _girilensayininKupuD=_girilensayi*_girilensayi*_girilensayi;
    _girilensayininKokuD=pow(_girilensayi, 0.5);


    _girilensayininKaresiD=(_girilensayininKaresiD*100).round()/100;
    _girilensayininKupuD=(_girilensayininKupuD*100).round()/100;
    _girilensayininKokuD=(_girilensayininKokuD*100).round()/100;

    _girilensayininKaresiS='$_girilensayininKaresiD';

    _girilensayininKupuS='$_girilensayininKupuD';
    _girilensayininKokuS='$_girilensayininKokuD';




    setState(() {});

  }
  void _temizle() {

    _girilensayininKaresiS="---";
    _girilensayininKupuS="---";
    _girilensayininKokuS="---";
    _sayiAl.text="";
    setState(() {});

  }

  final _sayiAl = TextEditingController();
  @override
  Widget build(BuildContext context) {



    return new MaterialApp(

      title: 'Mobil Programlama Ödevi',
      home: new Scaffold(

        backgroundColor: color,
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: new Text('Ana Sayfa'),

        ),
        body: new Center(
          child:Padding(padding: const EdgeInsets.all(30),


            child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 40,),

              TextFormField(

                  decoration: InputDecoration(
                    hintText: "Bir sayı girin (Ondalık için . kullanın)",
                    labelText: "Sayı",

                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),

                  ),
                keyboardType: TextInputType.number,

                controller: _sayiAl,



              ),
              SizedBox(height: 40,),

              new RaisedButton(

                padding: const EdgeInsets.all(15.0),

                child: new Text('Hesapla', style: new TextStyle(fontSize: 20.0,)),
                color: colorButon,
                textColor: Colors.black,
                elevation: 10.0,

                splashColor: Colors.white70,
                onPressed: _hesaplama,
              ),
              SizedBox(height: 40,),

              new Text(
                "Girilen Sayının Karesi : $_girilensayininKaresiS",
                style: new TextStyle(
                  fontSize: 25.0,
                  color: new Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20,),
              new Text(
                "Girilen Sayının Küpü : $_girilensayininKupuS",
                style: new TextStyle(
                  fontSize: 25.0,
                  color: new Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20,),


              new Text(
                "Girilen Sayının Kökü : $_girilensayininKokuS",
                style: new TextStyle(
                  fontSize: 25.0,
                  color: new Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 40,),

              new RaisedButton(
                padding: const EdgeInsets.all(15.0),

                child: new Text('Temizle', style: new TextStyle(fontSize: 20.0,)),
                color: colorButon2,
                textColor: Colors.black,

                elevation: 10.0,
                splashColor: Colors.white70,
                onPressed: _temizle,
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
