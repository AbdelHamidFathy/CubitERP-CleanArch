import 'package:dexef_task/features/authentication/domain/entities/user_stores_list.dart';

class UserStoresListModel extends UserStoresList {
  const UserStoresListModel({
    int? id,
    String? name,
  }) : super(
          id: id,
          name: name,
        );

  factory UserStoresListModel.fromJson(Map<String, dynamic> json) =>
      UserStoresListModel(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}