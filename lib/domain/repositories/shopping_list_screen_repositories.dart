import 'package:meals/domain/models/item_model.dart';
import 'package:meals/data/remote_data_sources/shopping_list_screen_remote_data_source.dart';

class ShoppingListScreenRepositories {
  ShoppingListScreenRepositories(this._shoppinglistscreenRemoteDataSource);

  final ShoppingListScreenRemoteDataSource _shoppinglistscreenRemoteDataSource;
  Stream<List<ItemModel>> getItemsStream() {
    return _shoppinglistscreenRemoteDataSource.shoppinglistRemoteData().map(
      (querySnapshot) {
        return querySnapshot!.docs.map((doc) {
          return ItemModel(
            title: doc['title'],
            id: doc.id,
          );
        }).toList();
      },
    );
  }

  Future<void> add({required String title}) {
    return _shoppinglistscreenRemoteDataSource.add(title: title);
  }

  Future<void> delete({required String id}) {
    return _shoppinglistscreenRemoteDataSource.delete(id: id);
  }
}
