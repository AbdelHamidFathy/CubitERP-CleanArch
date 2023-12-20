import 'package:dexef_task/features/authentication/domain/entities/user_branch_list.dart';

class UserBranchsListModel extends UserBranchsList {
  const UserBranchsListModel({
    int? id,
    String? name,
  }) : super(
          id: id,
          name: name,
        );

  factory UserBranchsListModel.fromJson(Map<String, dynamic> json) =>
      UserBranchsListModel(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
