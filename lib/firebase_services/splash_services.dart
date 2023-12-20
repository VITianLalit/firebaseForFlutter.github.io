import 'dart:async';

import 'package:firebase2/ui/auth/login_screen.dart';
import 'package:firebase2/ui/firestore/firestore_list_screen.dart';
import 'package:firebase2/ui/upload_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../ui/posts/post_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if(user != null){
      Timer(
          const Duration(seconds: 3),
              () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PostScreen())));
    }else{
      Timer(
          const Duration(seconds: 3),
              () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen())));
    }

  }
}
