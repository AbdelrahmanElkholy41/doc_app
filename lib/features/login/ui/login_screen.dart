// features/login/ui/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_main_button.dart';
import '../data/modals/login_request_body.dart';
import '../logic/login_cubit.dart';
import '../../../core/routing/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // العنوان الرئيسي
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36.h),

                // فورم الإيميل والباسورد
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                    ),
                    verticalSpace(40.h),

                    // زرار تسجيل الدخول
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateTheLogin(context);
                      },
                    ),
                    verticalSpace(16.h),

                    // الشروط والأحكام
                    const TermsAndConditions(),
                    verticalSpace(60.h),

                    // نص إنشاء حساب
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account yet?',
                            style: TextStyles.font13DarkBlueRegular,
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  Routes.signUpScreen,
                                );
                              },
                              child: Text(
                                ' Sign Up',
                                style: TextStyles.font13BlueSemiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Bloc Listener لمعالجة حالات تسجيل الدخول
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateTheLogin(BuildContext context) {
  final loginCubit = context.read<LoginCubit>();

  if (loginCubit.formKey.currentState!.validate()) {
    loginCubit.emitLoginState(
      LoginRequestBody(
        email: loginCubit.emailController.text.trim(),
        password: loginCubit.passwordController.text.trim(),
      ),
    );
  }
}
