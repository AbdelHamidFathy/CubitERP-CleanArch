import 'package:dexef_task/features/authentication/domain/entities/verification.dart';

class VerificationModel extends Verification {
  const VerificationModel({
    String? passward,
    String? serialNumber,
    String? usertype,
    bool? showMyReportOnly,
    dynamic permission,
    int? privilegeID,
    int? branchID,
  }) : super(
            passward: passward,
            serialNumber: serialNumber,
            usertype: usertype,
            showMyReportOnly: showMyReportOnly,
            permission: permission,
            privilegeID: privilegeID,
            branchID: branchID);

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      VerificationModel(
        passward: json['passward'],
        serialNumber: json['serial_number'],
        usertype: json['usertype'],
        showMyReportOnly: json['ShowMyReportOnly'],
        permission: json['Permission'],
        privilegeID: json['privilegeID'],
        branchID: json['BranchID'],
      );

  Map<String, dynamic> toJson() => {
        'passward': passward,
        'serial_number': serialNumber,
        'usertype': usertype,
        'ShowMyReportOnly': showMyReportOnly,
        'Permission': permission,
        'privilegeID': privilegeID,
        'BranchID': branchID,
      };
}
