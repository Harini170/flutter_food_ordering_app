import 'package:food_oderingapp/models/food_item.dart';
import 'package:food_oderingapp/bloc/cart_event.dart';
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

// Add item to cart
class AddToCart extends CartEvent {
  final FoodItem item;
  const AddToCart(this.item);

  @override
  List<Object?> get props => [item];
}

// Remove item from cart
class RemoveFromCart extends CartEvent {
  final FoodItem item;
  const RemoveFromCart(this.item);

  @override
  List<Object?> get props => [item];
}

// Clear cart
class ClearCart extends CartEvent {}

// ✅ Fix: PlaceOrder event with address
class PlaceOrder extends CartEvent {
  final String address;
  const PlaceOrder(this.address);

  @override
  List<Object?> get props => [address];
}
