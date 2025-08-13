// features/sign_up/ui/sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/coutom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
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
              CustomTextField(
                hintText: 'Email',
                validator: (value) {},
              ),
              verticalSpace(16.h),
              CustomTextField(
                hintText: 'Password',
                validator: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
