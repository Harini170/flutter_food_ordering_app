import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_oderingapp/models/food_item.dart';
import 'package:food_oderingapp/bloc/cart_event.dart';
import 'package:food_oderingapp/bloc/cart_state.dart';
import 'package:food_oderingapp/ui/cart_screen.dart';
import 'package:food_oderingapp/bloc/cart_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    // Add to cart
    on<AddToCart>((event, emit) {
      final updatedItems = List<FoodItem>.from(state.items)..add(event.item);
      final newTotal = updatedItems.fold(0.0, (sum, item) => sum + item.price);
      emit(state.copyWith(items: updatedItems, total: newTotal));
    });

    // Remove from cart
    on<RemoveFromCart>((event, emit) {
      final updatedItems = List<FoodItem>.from(state.items)..remove(event.item);
      final newTotal = updatedItems.fold(0.0, (sum, item) => sum + item.price);
      emit(state.copyWith(items: updatedItems, total: newTotal));
    });

    // Clear cart
    on<ClearCart>((event, emit) {
      emit(const CartState(items: [], total: 0.0));
    });

    // Place order
    on<PlaceOrder>((event, emit) {
      emit(state.copyWith(orderPlaced: true));
    });
  }
}
