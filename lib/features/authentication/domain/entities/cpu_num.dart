import 'package:equatable/equatable.dart';

class CpuNum extends Equatable{
  final int? maxNum;

  const CpuNum({this.maxNum});
  
  @override
  List<Object?> get props => [maxNum];
}