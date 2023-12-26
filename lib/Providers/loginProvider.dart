import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class LoginProvider extends ChangeNotifier{
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController nc =TextEditingController();
  TextEditingController mc =TextEditingController();
  void Add(){
    String id = DateTime.now().millisecondsSinceEpoch.toString();

    Map<String, dynamic> dataMap = HashMap();

    dataMap["Name"] = nc.text;
    dataMap["Phone"] = '+91${mc.text}';
    db.collection("USERS").doc(id).set(dataMap);
    notifyListeners();
  }



}