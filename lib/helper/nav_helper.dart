import 'package:flutter/material.dart';
import 'package:favotiteapp/screens/profile_screen.dart';

profileNavigation(ctx){
  return  Navigator.push(
    ctx,
    MaterialPageRoute(builder: (context) => const ProfileScreen()),
  );
}