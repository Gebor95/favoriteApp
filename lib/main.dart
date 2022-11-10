import 'package:favotiteapp/providers/counter.dart';
import 'package:favotiteapp/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Couter()),
          ChangeNotifierProvider(create: (context) => FavoriteProvider())
          ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Favorite App',
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ));
  }
}