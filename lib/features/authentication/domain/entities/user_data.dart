import 'package:dexef_task/features/authentication/domain/entities/company_currency.dart';
import 'package:dexef_task/features/authentication/domain/entities/cpu_num.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_branch_list.dart';
import 'package:dexef_task/features/authentication/domain/entities/user_stores_list.dart';
import 'package:dexef_task/features/authentication/domain/entities/verification.dart';
import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final List<Verification>? verification;
  final List<CompanyCurrency>? companyCurrency;
  final List<CpuNum>? cpuNum;
  final List<UserBranchsList>? userBranchsList;
  final List<UserStoresList>? userStoresList;

  const UserData({
    this.verification,
    this.companyCurrency,
    this.cpuNum,
    this.userBranchsList,
    this.userStoresList,
  });

  @override
  List<Object?> get props =>
      [verification, companyCurrency, cpuNum, userBranchsList, userStoresList];
}
