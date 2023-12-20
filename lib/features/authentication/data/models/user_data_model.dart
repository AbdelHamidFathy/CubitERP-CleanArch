import 'package:dexef_task/features/authentication/data/models/company_currency_model.dart';
import 'package:dexef_task/features/authentication/data/models/cpu_num_model.dart';
import 'package:dexef_task/features/authentication/data/models/user_branches_list_model.dart';
import 'package:dexef_task/features/authentication/data/models/user_stores_list_model.dart';
import 'package:dexef_task/features/authentication/data/models/verification_model.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_data.dart';

class UserDataModel extends UserData {
  const UserDataModel({
    List<VerificationModel>? verification,
    List<CompanyCurrencyModel>? companyCurrency,
    List<CpuNumModel>? cpuNum,
    List<UserBranchsListModel>? userBranchsList,
    List<UserStoresListModel>? userStoresList,
  }) : super(
          verification: verification,
          companyCurrency: companyCurrency,
          cpuNum: cpuNum,
          userBranchsList: userBranchsList,
          userStoresList: userStoresList,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        verification: (json['Verification'] as List<dynamic>?)
          ?.map((item) => VerificationModel.fromJson(item))
          .toList(),
      companyCurrency: (json['CompanyCurrency'] as List<dynamic>?)
          ?.map((item) => CompanyCurrencyModel.fromJson(item))
          .toList(),
      cpuNum: (json['CpuNum'] as List<dynamic>?)
          ?.map((item) => CpuNumModel.fromJson(item))
          .toList(),
      userBranchsList: (json['UserBranchsList'] as List<dynamic>?)
          ?.map((item) => UserBranchsListModel.fromJson(item))
          .toList(),
      userStoresList: (json['UserStoresList'] as List<dynamic>?)
          ?.map((item) => UserStoresListModel.fromJson(item))
          .toList(),
      );

  Map<String, dynamic> toJson() => {
        'Verification': verification,
        'CompanyCurrency': companyCurrency,
        'CpuNum': cpuNum,
        'UserBranchsList': userBranchsList,
        'UserStoresList': userStoresList,
      };
}
