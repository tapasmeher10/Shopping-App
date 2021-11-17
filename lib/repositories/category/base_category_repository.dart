import 'package:saree_center/config/models/category_model.dart';

abstract class BaseCategoryRepository {
  Stream<List<Catagory>> getAllCategories();
}
