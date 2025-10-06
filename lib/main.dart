import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_oderingapp/ui/food_list_screen.dart';
import 'package:food_oderingapp/bloc/cart_bloc.dart';

void main() {
  runApp(FoodOderApp());
}

class FoodOderApp extends StatelessWidget {
  const FoodOderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Odering App",
        theme: ThemeData(primarySwatch: Colors.red, useMaterial3: true),
        home: FoodListScreen(),
      ),
    );
  }
}
