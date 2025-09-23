// features/sign_up/ui/sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/coutom_text_field.dart';
import 'package:flutter_complete_project/features/sign_up/ui/widget/sign_up_form.dart';
import 'package:flutter_complete_project/features/sign_up/ui/widget/sign_up_other.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_main_button.dart';
import '../../login/ui/widgets/terms_and_conditions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(50.h),
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8.h),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(17.h),
                const sign_up_form(),
                verticalSpace(32.h),
                AppTextButton(
                  buttonText: 'Create Account',
                  textStyle: TextStyles.font16WhiteMedium,
                  onPressed: () {
                  context.pushNamed(Routes.homeScreen);
                  },
                ),
                verticalSpace(46.h),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: ColorsManager.lighterGray,
                        endIndent: 10,
                      ),
                    ),
                    Text("Or sign in with",
                        style: TextStyles.font13GrayRegular),
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: ColorsManager.lighterGray,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                verticalSpace(30.h),
                const SignUpOther(),
                verticalSpace(30.h),
                const TermsAndConditions(),
                verticalSpace(24.h),
                Center(
                  child: RichText(
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
                                Routes.loginScreen,
                              );
                            },
                            child: Text(
                              ' Log In',
                              style: TextStyles.font13BlueSemiBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
