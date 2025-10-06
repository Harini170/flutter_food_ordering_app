import 'package:food_oderingapp/models/food_item.dart';
import 'package:food_oderingapp/bloc/cart_event.dart';
import 'package:food_oderingapp/bloc/cart_state.dart';
import 'package:equatable/equatable.dart';
import '../models/food_item.dart';

class CartState extends Equatable {
  final List<FoodItem> items;
  final double total;
  final bool orderPlaced;

  const CartState({
    this.items = const [],
    this.total = 0.0,
    this.orderPlaced = false,
  });

  CartState copyWith({
    List<FoodItem>? items,
    double? total,
    bool? orderPlaced,
  }) {
    return CartState(
      items: items ?? this.items,
      total: total ?? this.total,
      orderPlaced: orderPlaced ?? this.orderPlaced,
    );
  }

  @override
  List<Object> get props => [items, total, orderPlaced];
}

// Initial state
class CartInitial extends CartState {}
