import 'package:equatable/equatable.dart';

class UserBranchsList extends Equatable{
  final int? id;
  final String? name;

  const UserBranchsList({this.id, this.name});
  
  @override
  List<Object?> get props => [id, name];
}