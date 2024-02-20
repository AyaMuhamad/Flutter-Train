import 'UserModel.dart';

class customerModel extends userModel {
  final int ssn;
  final int creditcardnum;

  customerModel(
    this.ssn,
    this.creditcardnum, {
    required super.name,
    required super.email,
    required super.password,
  });

  void register() {}
  void browseCategories() {}
  void browseItems() {}
  void addItemToCart() {}
  void cancelOrder() {}
  void cancelItems() {}
  void updatePersonalInfo() {}
  void addFeedbackToItems() {}
  void showTotalPrice() {}
  void payment() {}
}
