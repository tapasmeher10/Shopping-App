// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:saree_center/config/models/category_model.dart';
// import 'package:saree_center/config/models/models.dart';
// import 'package:saree_center/repositories/product/base_product_repository.dart';

// class ProductRepository extends BaseProductRepository {
//   final FirebaseFirestore _firebaseFirestore;

//   ProductRepository({FirebaseFirestore? firebaseFirestore})
//       : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

//   @override
//   Stream<List<Product>> getAllCategories() {
//     return _firebaseFirestore.collection('products').snapshots().map((snapshot){
//       return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
//     });
//   }

  
//   }
// }
