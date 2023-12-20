import 'package:dexef_task/features/authentication/domain/entities/company_currency.dart';

class CompanyCurrencyModel extends CompanyCurrency {
  const CompanyCurrencyModel({
    String? arCurrency,
    String? enCurrency,
  });

  factory CompanyCurrencyModel.fromJson(Map<String, dynamic> json) =>
      CompanyCurrencyModel(
        arCurrency: json['ar_currency'],
        enCurrency: json['en_currency'],
      );

  Map<String, dynamic> toJson() => {
        'ar_currency': arCurrency,
        'en_currency': enCurrency,
      };
}
