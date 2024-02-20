import 'UserModel.dart';

class adminModel extends userModel {
  adminModel({
    required super.name,
    required super.email,
    required super.password,
  });

  void performPayment(bool hasSale) {}
  void addNewCategory() {}
  void editCategory() {}
  void deleteCategory() {}
  void addNewItem() {}
  void checkItemsInStock() {}
  void addSaleForItems() {}
  void deleteUser() {}
  void checkCreditCard() {}
  void showAllOrders() {}
}
