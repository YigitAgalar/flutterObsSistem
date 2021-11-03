import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:obssistemi/service/auth.dart';
//***************************************************************************
//***************************************************************************
//************************ANA EKRAN******************************************
//***************************************************************************
//***************************************************************************

class anaekran extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(

        child: Column(

          children: <Widget> [
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Hoşgeldiniz")),
                  //***************************************************************************
                  Text("Yapmak istediğiniz işlemi seçiniz"),
                  //***************************************************************************
                  ElevatedButton.icon(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  admin_giris_ekran()));}, icon: Icon(Icons.admin_panel_settings), label: Text('Yönetici Girişi')),
                  //***************************************************************************
                  ElevatedButton.icon(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  ogrenci_giris_ekran()));}, icon: Icon(Icons.person), label: Text('Öğrenci Girişi')),
                  //***************************************************************************
                  ElevatedButton.icon(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  kayitekrani()));}, icon: Icon(Icons.person_add_alt_1_rounded), label: Text('Yeni Kayıt Oluştur')),
                ],),),],),),);}
}


//***************************************************************************
//***************************************************************************
//*********************KAYIT EKRANI******************************************
//***************************************************************************
//***************************************************************************

class kayitekrani extends StatelessWidget{
  final TextEditingController _ogrnoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _adsoyController = TextEditingController();
  final TextEditingController _telnoController = TextEditingController();
  final TextEditingController _tcnoController = TextEditingController();
  final TextEditingController _adresController = TextEditingController();
  final TextEditingController _dogtarController = TextEditingController();
  final TextEditingController _uniController = TextEditingController();
  final TextEditingController _fakController = TextEditingController();
  final TextEditingController _bolumController = TextEditingController();
  final TextEditingController _sinifController = TextEditingController();

  Auth _authService = Auth();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Kayıt Formu'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[

                              TextField(
                  controller:_ogrnoController,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            labelText: "Öğrenci Numarası",
                          labelStyle: TextStyle(color:Colors.purple, fontSize: 15),),),
                          TextField(
                            controller:_emailController,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                                labelText: "E-Posta Adresi",
                              labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                            ),),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      labelText: "Şifre",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),

                  TextField(
                    controller: _adsoyController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Ad-Soyad",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),),),
                  TextField(
                    controller: _telnoController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Telefon Numarası",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),

                  TextField(
                    controller:_tcnoController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "TC Kimlik Numarası",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),
                  TextField(
                    controller:_adresController,
                    maxLines: 5,
                    maxLength: 100,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Adres",
                        labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),
                  TextField(
                    controller:_dogtarController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Doğum Tarihi",
                        hintText: "GGAAYYYY",
                        hintStyle: TextStyle(color:Colors.purple),
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),
                  TextField(
                    controller:_uniController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Üniversite",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),

                  TextField(
                    controller:_fakController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Fakülte",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),

                  TextField(
                    controller:_bolumController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Bölüm",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),
                  TextField(
                    controller:_sinifController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      labelText: "Sınıf",
                      labelStyle: TextStyle(color:Colors.purple, fontSize: 15),
                    ),),

                  ElevatedButton(onPressed: () {_authService.registerOgrenci(_ogrnoController.text, _emailController.text, _passwordController.text,
                      _adsoyController.text, _telnoController.text, _tcnoController.text, _adresController.text, _sinifController.text,
                      _dogtarController.text, _uniController.text, _fakController.text, _bolumController.text).then((value) {
                  return
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  new anaekran()));});},
    child: const Text('Kayıt Ol'),),

                ],),),],),),);}
}


//***************************************************************************
//***************************************************************************
//*********************GİRİŞ EKRANLARI***************************************
//***************************************************************************
//***************************************************************************

class ogrenci_giris_ekran extends StatelessWidget{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Auth _authService = Auth();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Öğrenci Girişi'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Hoşgeldiniz")),
                  //***************************************************************************
                  Text("Lütfen Giriş Yapınız"),
                  //***************************************************************************
                    TextField(
                      controller: _emailController,

                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "E-Posta Adresi",
                        labelStyle: TextStyle(color:Colors.purple),
                        prefixIcon: Icon(Icons.person,
                          color: Colors.purple)

                      ),

                    ),
                  //***************************************************************************
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Sifre",
                        labelStyle: TextStyle(color:Colors.purple),
                        prefixIcon: Icon(Icons.vpn_key,
                            color: Colors.purple)

                    ),

                  ),
                  //***************************************************************************
                  const Text("                                                        "),
                  Row(
                    children: [
                      const Text("                                                        "),
                      ElevatedButton(
                        style:ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple)),
                        onPressed: () {_authService.signIn(_emailController.text, _passwordController.text).then((value)
                  {
                    return
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>   ogrenci_panel()));});},

                  child: const Text('Giriş Yap'),),

                      // ŞİFRE UNUTTUM
                      RichText(text: TextSpan(text: "Şifremi Unuttum", style: new TextStyle(color: Colors.blue), recognizer: new TapGestureRecognizer()..onTap = () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  ogrenci_panel()),);},),)
                    ],
                  ),
                  // ŞİFRE UNUTTUM



                ],),),],),),);}
}

class admin_giris_ekran extends StatelessWidget{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Auth _authService = Auth();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Admin Girişi'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Hoşgeldiniz")),
                  //***************************************************************************
                  Text("Lütfen Giriş Yapınız"),
                  TextField(
                    controller: _emailController,

                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "E-Posta Adresi",
                        labelStyle: TextStyle(color:Colors.purple),
                        prefixIcon: Icon(Icons.person,
                            color: Colors.purple)

                    ),

                  ),
                  //***************************************************************************
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        labelText: "Sifre",
                        labelStyle: TextStyle(color:Colors.purple),
                        prefixIcon: Icon(Icons.vpn_key,
                            color: Colors.purple)

                    ),

                  ),
                  //***************************************************************************
                  Row(
                    children: [
                      const Text("                                                        "),
                      ElevatedButton(
                        style:ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple)),
                        onPressed: () {_authService.signInAdmin(_emailController.text, _passwordController.text).then((value)
                        {
                          return
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>   admin_panel()));});},

                        child: const Text('Giriş Yap'),),

                      // ŞİFRE UNUTTUM
                      RichText(text: TextSpan(text: "Şifremi Unuttum", style: new TextStyle(color: Colors.blue), recognizer: new TapGestureRecognizer()..onTap = () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  admin_panel()),);},),)
                    ],
                  ),
                  // ŞİFRE UNUTTUM



                ],),),],),),);}
}


//***************************************************************************
//***************************************************************************
//*********************GİRİŞ EKRANLARI***************************************
//***************************************************************************
//***************************************************************************



//***************************************************************************
//***************************************************************************
//*********************ÖĞRENCİ PANEL*****************************************
//***************************************************************************
//***************************************************************************


class ogrenci_panel extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Öğrenci Paneli'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Öğrenci")),
                  //***************************************************************************
                  Text("Bölüm"),
                  //***************************************************************************
                 Text("Öğrenci Numarası"),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Dilekçe Gönder'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  ogrenci_basvurular()));}, child: const Text('Başvurularım'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  ogrenci_yeni_basvuru()));}, child: const Text('Yeni Başvuru Yap'),),


                ],),),],),),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Ana Ekran')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ayarlar')
          )
        ],
      ),
    );}
}
//***************************************************************************
//**********************BAŞVURULARIM*****************************************
//***************************************************************************
class ogrenci_basvurular extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Başvurularım'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Başvuru Tipini Seçiniz")),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Başvurusu Bitenler'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Başvurusu Devam'),),
                ],),),],),),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Ana Ekran')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ayarlar')
          )
        ],
      ),
    );}
}

//***************************************************************************
//**********************YENİ BAŞVURU*****************************************
//***************************************************************************

class ogrenci_yeni_basvuru extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Yeni Başvuru'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Başvuru Tipini Seçiniz")),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Yaz Okulu'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Yatay Geçiş'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Dikey Geçiş Sınavı'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Çift Anadad Programı'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Ders İntibakı'),),
                ],),),],),),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Ana Ekran')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ayarlar')
          )
        ],
      ),
    );}
}




//***************************************************************************
//***************************************************************************
//*********************ÖĞRENCİ PANEL*****************************************
//***************************************************************************
//***************************************************************************


//***************************************************************************
//***************************************************************************
//***********************ADMİN PANEL*****************************************
//***************************************************************************
//***************************************************************************


class admin_panel extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
        title: Text('Admin Paneli'),),
      //***************************************************************************
      //***************************************************************************
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(child: Text("Admin")),
                  //***************************************************************************
                  Text("Ünvan"),
                  //***************************************************************************
                  Text("Admin Numarası"),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Gelen Başvurular'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Kabul Edilen Başvurular/Dilekçeler'),),
                  //***************************************************************************
                  ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Reddedilen Başvurular/Dilekçeler'),),


                ],),),],),),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Ana Ekran')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ayarlar')
          )
        ],
      ),
    );}
}
//***************************************************************************
//***************************************************************************
//***********************ADMİN PANEL*****************************************
//***************************************************************************
//***************************************************************************



void main() async{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anaekran()

  ),);

  await Firebase.initializeApp();
}
