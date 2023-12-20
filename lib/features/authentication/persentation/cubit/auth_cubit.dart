import 'package:dartz/dartz.dart';
import 'package:dexef_task/config/routes/routes.dart';
import 'package:dexef_task/core/error/failures.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';
import 'package:dexef_task/features/authentication/domain/usecases/get_user_data.dart';
import 'package:dexef_task/features/authentication/persentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final GetUserData getUserDataUseCase;
  AuthCubit({required this.getUserDataUseCase}) : super(AuthInitial());

  final ipController = TextEditingController();
  final dataBaseController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  GlobalKey formKey = GlobalKey<FormState>();

  Future<void> login({required BuildContext context}) async {
    emit(LoginIsLoading());
    Either<Failure, UserData> response = await getUserDataUseCase({
      "ip": ipController.text,
      "user_name": userNameController.text,
      "dataBase": dataBaseController.text,
      "lang": "ar",
    });
    emit(response.fold((failure) => LoginError(msg: _mapFailureToMsg(failure)),
        (userData) {
      Navigator.pushNamed(context, Routes.homeRoute);
      return LoginLoaded(userData: userData);
    }));
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;
      case CacheFailure:
        return AppStrings.cacheFailure;

      default:
        return AppStrings.unexpectedError;
    }
  }
}
