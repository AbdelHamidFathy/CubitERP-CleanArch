import 'package:dartz/dartz.dart';
import 'package:dexef_task/core/error/exceptions.dart';
import 'package:dexef_task/core/error/failures.dart';
import 'package:dexef_task/core/network/network_info.dart';
import 'package:dexef_task/features/authentication/data/data%20sources/get_user_data_remote_data_source.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';
import 'package:dexef_task/features/authentication/domain/repositories/user_data_repository.dart';

class UserDataRepositoryImpl implements UserDataRepository {
  final NetworkInfo networkInfo;
  final UserDataRemoteDataSource userDataRemoteDataSource;

  UserDataRepositoryImpl({
    required this.networkInfo,
    required this.userDataRemoteDataSource,
  });

  @override
  Future<Either<Failure, UserData>> getUserData({required params}) async {
    try {
      final remoteRandomQuote =
          await userDataRemoteDataSource.getUserData(params: params);
      return Right(remoteRandomQuote);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
