import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_udemy/app/enums/enums.dart';
import 'package:meals_udemy/models/item_model.dart';
import 'package:meals_udemy/repositories/shopping_list_screen_repository.dart';

part 'shopping_list_screen_state.dart';

class ShoppingListScreenCubit extends Cubit<ShoppingListScreenState> {
  ShoppingListScreenCubit(this.shoppingListScreenRepositories)
      : super(
          const ShoppingListScreenState(
            documents: [],
            errorMessage: '',
            status: Status.initial,
          ),
        );

  final ShoppingListScreenRepositories shoppingListScreenRepositories;
  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const ShoppingListScreenState(
        documents: [],
        status: Status.loading,
        errorMessage: '',
      ),
    );

    _streamSubscription =
        shoppingListScreenRepositories.getItemsStream().listen(
      (data) {
        emit(
          ShoppingListScreenState(
            documents: data,
            status: Status.success,
            errorMessage: '',
          ),
        );
      },
    )..onError(
            (error) {
              ShoppingListScreenState(
                documents: const [],
                status: Status.error,
                errorMessage: error.toString(),
              );
            },
          );
  }

  Future<void> delete({
    required document,
    required id,
  }) async {
    await shoppingListScreenRepositories.delete(id: document.id);
  }

  Future<void> add({
    required String title,
  }) async {
    shoppingListScreenRepositories.add(title: title);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
