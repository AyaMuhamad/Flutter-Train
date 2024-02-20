import 'AdminModel.dart';
import 'CustomerModel.dart';
import 'CategoryModel.dart';
import 'ItemModel.dart';

class onlineShoppingDBModel {
  static onlineShoppingDBModel? _dbModel;
  
  late adminModel adminobj;
  late List<customerModel> custObj;
  late List<categoryModel> catObj;
  late List<itemModel> itemObj;

  onlineShoppingDBModel? getInstance() {
    if (_dbModel == null) {
      _dbModel = onlineShoppingDBModel();
    }
    return _dbModel;
  }
}
