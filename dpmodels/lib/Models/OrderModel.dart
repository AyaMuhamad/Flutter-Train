import 'ItemModel.dart';

class orderModel {
  
  final List<itemModel> cart;
  final String estimatedTime;

  orderModel(this.estimatedTime, this.cart);

  void CalculateTotalReceipt() {}
}
