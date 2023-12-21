import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:dexef_task/core/utils/assets_manager.dart';
import 'package:dexef_task/core/widgets/custom_button.dart';
import 'package:dexef_task/core/widgets/custom_text.dart';
import 'package:dexef_task/core/widgets/vertical_space.dart';
import 'package:dexef_task/features/authentication/persentation/cubit/auth_cubit.dart';
import 'package:dexef_task/features/authentication/persentation/cubit/auth_state.dart';
import 'package:dexef_task/features/authentication/persentation/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Form(
              key: BlocProvider.of<AuthCubit>(context).formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalSpace(),
                  Row(
                    children: [
                      CustomText(
                        text: AppStrings.elhamadCompany,
                        fontSize: 12.sp,
                        fontColor: AppColors.primaryColor,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AssetsManager.search,
                      ),
                      SvgPicture.asset(
                        AssetsManager.add,
                      ),
                    ],
                  ),
                  Divider(
                    endIndent: 70.w,
                    color: Colors.black,
                  ),
                  const VerticalSpace(),
                  const Image(
                      image: AssetImage(
                    AssetsManager.loginImage,
                  )),
                  const VerticalSpace(),
                  CustomText(
                    text: AppStrings.userLogin.toUpperCase(),
                    fontSize: 15.sp,
                  ),
                  const VerticalSpace(),
                  CustomTextForm(
                    validate: (value) => value == null || value.isEmpty
                        ? AppStrings.requiredField
                        : null,
                    isPassword: false,
                    label: AppStrings.ip,
                    controller:
                        BlocProvider.of<AuthCubit>(context).ipController,
                    context: context,
                    keyboardType: TextInputType.text,
                  ),
                  const VerticalSpace(),
                  CustomTextForm(
                    validate: (value) => value == null || value.isEmpty
                        ? AppStrings.requiredField
                        : null,
                    isPassword: false,
                    label: AppStrings.dataBase,
                    controller:
                        BlocProvider.of<AuthCubit>(context).dataBaseController,
                    context: context,
                    keyboardType: TextInputType.text,
                  ),
                  const VerticalSpace(),
                  CustomTextForm(
                    validate: (value) => value == null || value.isEmpty
                        ? AppStrings.requiredField
                        : null,
                    isPassword: false,
                    label: AppStrings.userName,
                    controller:
                        BlocProvider.of<AuthCubit>(context).userNameController,
                    context: context,
                    keyboardType: TextInputType.text,
                  ),
                  const VerticalSpace(),
                  CustomTextForm(
                    validate: (value) => value == null || value.isEmpty
                        ? AppStrings.requiredField
                        : null,
                    isPassword: false,
                    label: AppStrings.password,
                    controller:
                        BlocProvider.of<AuthCubit>(context).passwordController,
                    context: context,
                    keyboardType: TextInputType.text,
                  ),
                  const VerticalSpace(),
                  Row(
                    children: [
                      SvgPicture.asset(AssetsManager.rememberPassword),
                      SizedBox(
                        width: 3.w,
                      ),
                      CustomText(
                        text: AppStrings.rememberPassword,
                        fontSize: 13.sp,
                        fontColor: AppColors.grey,
                      ),
                    ],
                  ),
                  const VerticalSpace(),
                  BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
                    if (state is LoginIsLoading) {
                      return Center(
                          child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ));
                    } else {
                      return CustomButton(
                        onTap: () async {
                          await BlocProvider.of<AuthCubit>(context)
                              .login(context: context);
                        },
                        buttonText: AppStrings.logIn.toUpperCase(),
                      );
                    }
                  }),
                  const VerticalSpace(),
                  CustomButton(
                    buttonText: AppStrings.demoVersion.toUpperCase(),
                    buttonColor: AppColors.green,
                  ),
                  const VerticalSpace(),
                  CustomText(
                    text: AppStrings.demoVersionYouCanBrowseOurDummyData,
                    fontSize: 9.sp,
                    fontColor: AppColors.grey,
                  ),
                  const VerticalSpace(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
