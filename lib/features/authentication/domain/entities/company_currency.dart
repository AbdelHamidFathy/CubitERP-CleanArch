import 'package:equatable/equatable.dart';

class CompanyCurrency extends Equatable{
  final String? arCurrency;
  final String? enCurrency;

  const CompanyCurrency({this.arCurrency, this.enCurrency});
  
  @override
  List<Object?> get props => [arCurrency, enCurrency];
}