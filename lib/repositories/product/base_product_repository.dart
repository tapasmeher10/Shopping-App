import 'package:saree_center/config/models/category_model.dart';
import 'package:saree_center/config/models/models.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllCategories();
}
