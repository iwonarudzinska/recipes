import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ShoppingListScreenRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>?> shoppinglistRemoteData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .snapshots();
  }

  Future<void> add({required String title}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .add({'title': title});
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .doc(id)
        .delete();
  }
}
