part of 'shopping_list_screen_cubit.dart';


// class ShoppingListScreenState {
//   final List<ItemModel> documents;
//   final String? errorMessage;
//   final Status status;

//   const ShoppingListScreenState({
//     required this.errorMessage,
//     required this.documents,
//     this.status = Status.initial,
//   });
// }

@freezed
class ShoppingListScreenState  with _$ShoppingListScreenState  {
  factory ShoppingListScreenState ({
    @Default([]) List<ItemModel> documents,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _ShoppingListScreenState;
}
