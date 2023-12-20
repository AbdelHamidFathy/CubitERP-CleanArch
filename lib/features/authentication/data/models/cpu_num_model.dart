import 'package:dexef_task/features/authentication/domain/entities/cpu_num.dart';

class CpuNumModel extends CpuNum {
  const CpuNumModel({int? maxNum}) : super(maxNum: maxNum);

  factory CpuNumModel.fromJson(Map<String, dynamic> json) => CpuNumModel(
        maxNum: json['MaxNum'],
      );

  Map<String, dynamic> toJson() => {
        'MaxNum': maxNum,
      };
}
