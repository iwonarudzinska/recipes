import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meals/app/core/enums.dart';
import 'package:meals/domain/models/item_model.dart';
import 'package:meals/domain/repositories/shopping_list_screen_repositories.dart';

part 'shopping_list_screen_state.dart';
part 'shopping_list_screen_cubit.freezed.dart';

class ShoppingListScreenCubit extends Cubit<ShoppingListScreenState> {
  ShoppingListScreenCubit(this.shoppingListScreenRepositories)
      : super(
           ShoppingListScreenState(
            documents: [],
            errorMessage: '',
            status: Status.initial,
          ),
        );

  final ShoppingListScreenRepositories shoppingListScreenRepositories;
  
  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      ShoppingListScreenState(
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
