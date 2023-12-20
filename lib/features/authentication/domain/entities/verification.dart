import 'package:equatable/equatable.dart';

class Verification extends Equatable {
  final String? passward;
  final String? serialNumber;
  final String? usertype;
  final bool? showMyReportOnly;
  final dynamic permission;
  final int? privilegeID;
  final int? branchID;

  const Verification({
    this.passward,
    this.serialNumber,
    this.usertype,
    this.showMyReportOnly,
    this.permission,
    this.privilegeID,
    this.branchID,
  });

  @override
  List<Object?> get props => [
        passward,
        serialNumber,
        usertype,
        showMyReportOnly,
        permission,
        privilegeID,
        branchID
      ];
}
