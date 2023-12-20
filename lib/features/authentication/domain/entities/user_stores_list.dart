import 'package:equatable/equatable.dart';

class UserStoresList extends Equatable{
  final int? id;
  final String? name;

  const UserStoresList({this.id, this.name});
  
  @override
  List<Object?> get props => [id, name];
}