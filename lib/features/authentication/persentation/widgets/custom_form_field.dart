// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextForm extends StatelessWidget {
  BuildContext context;
  final TextInputType keyboardType;
  final bool? isPassword;
  final Widget? preIcon;
  final IconData? sufIcon;
  final String? hint;
  final String? label;
  final String? errorText;
  final bool? enabled;
  final bool? readOnly;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final Function()? suffixOnPressed;
  Color? hintClr = const Color(0xff3E4C59).withOpacity(0.7);
  Color? bckClr = const Color(0xffE4E7EB);

  CustomTextForm({
    Key? key,
    required this.context,
    required this.keyboardType,
    this.preIcon,
    this.sufIcon,
    this.enabled,
    this.hint,
    this.label,
    required this.controller,
    this.errorText,
    this.validate,
    this.onSubmitted,
    this.onChanged,
    this.suffixOnPressed,
    this.isPassword,
    this.hintClr,
    this.bckClr,
    this.readOnly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      enabled: enabled ?? true,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.justify,
      style: const TextStyle(),
      onChanged: onChanged,
      validator: validate,
      controller: controller,
      cursorColor: const Color(0xff1F2933),
      keyboardType: keyboardType,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 3.w,
        ),
        errorText: errorText,
        prefixIcon: preIcon,
        suffixIcon: IconButton(
          icon: Icon(sufIcon, color: Colors.grey),
          onPressed: suffixOnPressed,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        border: InputBorder.none,
        hintText: hint,
        labelText: label,
        errorStyle: const TextStyle(
          height: 1.0,
        ),
        labelStyle: TextStyle(
          color: AppColors.grey,
        ),
        hintStyle: TextStyle(
          fontSize: 9.sp,
        ),
      ),
    );
  }
}
