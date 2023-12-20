import 'package:dexef_task/core/api/api_consumers.dart';
import 'package:dexef_task/core/api/end_points.dart';
import 'package:dexef_task/features/authentication/data/models/user_data_model.dart';

abstract class UserDataRemoteDataSource {
  Future<UserDataModel> getUserData({required params});
}

class UserDataRemoteDataSourceeImpl implements UserDataRemoteDataSource {
  ApiConsumer apiConsumer;

  UserDataRemoteDataSourceeImpl({required this.apiConsumer});

  @override
  Future<UserDataModel> getUserData({required params}) async {
    final response = await apiConsumer.get(
      EndPoints.getUserData, queryParameters: params,
    );
    return UserDataModel.fromJson(response);
  }
}
