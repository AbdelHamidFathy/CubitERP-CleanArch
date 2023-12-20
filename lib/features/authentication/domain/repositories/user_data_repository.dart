import 'package:dartz/dartz.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';
import '../../../../core/error/failures.dart';

abstract class UserDataRepository {
  Future<Either<Failure, UserData>> getUserData(
      {required params});
}
