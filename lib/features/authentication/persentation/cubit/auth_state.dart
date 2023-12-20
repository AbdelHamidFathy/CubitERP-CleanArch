import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class LoginIsLoading extends AuthState {}

class LoginLoaded extends AuthState {
  final UserData userData;

  const LoginLoaded({required this.userData});

  @override
  List<Object> get props => [userData];
}

class LoginError extends AuthState {
  final String msg;

  const LoginError({required this.msg});

  @override
  List<Object> get props => [msg];
}
