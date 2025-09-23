import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/coutom_text_field.dart';
import '../../../../core/widgets/custom_main_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(50.h),
            Text(
              'Forgot Password',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8.h),
            Text(
              'At our app, we take the security of your information seriously.',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(32.h),
            CustomTextField(
              hintText: 'Email or Phone Number',
              validator: (value) {},
            ),
            const Spacer(),
            AppTextButton(
              buttonText: 'Reset Password',
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {},
            ),
            verticalSpace(26.h),
          ],
        ),
      ),
    ));
  }
}
