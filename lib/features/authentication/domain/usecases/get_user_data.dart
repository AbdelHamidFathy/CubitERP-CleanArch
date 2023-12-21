import 'package:dartz/dartz.dart';
import 'package:dexef_task/core/usecases/usecases.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';
import 'package:dexef_task/features/authentication/domain/repositories/user_data_repository.dart';

import '../../../../core/error/failures.dart';

class GetUserData implements Usecase<UserData, Map<String, dynamic>> {
  final UserDataRepository dataRepository;

  GetUserData({required this.dataRepository});
  @override
  Future<Either<Failure, UserData>> call(params) =>
      dataRepository.getUserData(params: params);
}