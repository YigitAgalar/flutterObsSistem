import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth{
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;


    Future<User?> signIn(String email, String password) async{
      var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return user.user;
    }

    signOut() async{
      return await _auth.signOut();
}

    Future<User?> signInAdmin(String email, String password) async{
      var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return user.user;
    }


  Future<User?> registerOgrenci(String ogrno, String email, String password, String name, String telno, String tcno, String adres, String sinif, String dogtar, String uni, String fak, String bolum) async {
    var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await _firestore
    .collection("Ogrenci")
    .doc(user.user!.uid)
    .set({
      "Ad Soyad": name,
      "Ogrenci Numara": ogrno,
      "Email": email,
      "Telefon Numarası": telno,
      "TC Numarası": tcno,
      "Dogum Tarihi": dogtar,
      "Adres": adres,
      "Universite": uni,
      "Fakulte": fak,
      "Bolum": bolum,
      "Sinif": sinif,
    });
    return user.user;
  }


}