import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/password_validations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/coutom_text_field.dart';
import '../../logic/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isChecked = false;
  bool isObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: context.read<LoginCubit>().emailController,
              hintText: 'Email',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Email is not valid';
                }
              },
            ),
            verticalSpace(18.h),
            CustomTextField(
              controller: context.read<LoginCubit>().passwordController,
              hintText: 'Password',
              isObscureText: isObscureText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
              },
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: Icon(
                    isObscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility,
                    color: ColorsManager.mainBlue,
                  )),
            ),
            verticalSpace(15.h),
            PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ));
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

}
