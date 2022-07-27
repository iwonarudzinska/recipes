import 'package:cloud_firestore/cloud_firestore.dart';

class ShoppingListScreenRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>?> shoppinglistRemoteData() {
    return FirebaseFirestore.instance.collection('categories').snapshots();
  }

  Future<void> add({required String title}) {
    return FirebaseFirestore.instance
        .collection('categories')
        .add({'title': title});
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('categories').doc(id).delete();
  }
}
