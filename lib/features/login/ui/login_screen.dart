import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/coutom_text_field.dart';
import '../../../core/widgets/custom_main_button.dart';
import '../data/modals/login_request_body.dart';
import '../logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            Column(children: [
              const EmailAndPassword(),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyles.font13BlueRegular,
                    )),
              ),
              verticalSpace(40.h),
              AppTextButton(
                buttonText: 'Login',
                textStyle: TextStyles.font16WhiteMedium,
                onPressed: () {
                  validateTheLogin(context);

                },
              ),
              verticalSpace(16.h),
              const TermsAndConditions(),
              verticalSpace(60.h),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Already have an account yet?',
                    style: TextStyles.font13DarkBlueRegular),
                TextSpan(text: ' Sign Up', style: TextStyles.font13BlueSemiBold)
              ])),
              const LoginBlocListener()
            ]),
          ]),
        ),
      )),
    );
  }
}
void validateTheLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ));
  }
}
