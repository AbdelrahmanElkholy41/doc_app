import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/coutom_text_field.dart';

class sign_up_form extends StatelessWidget {
  const sign_up_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'Name',
          validator: (value) {},
        ),
        verticalSpace(16.h),
        CustomTextField(
          hintText: 'Email',
          validator: (value) {},
        ),
        verticalSpace(16.h),
        CustomTextField(
          hintText: 'Your Number',
          validator: (value) {},
        ),
        verticalSpace(16.h),
        CustomTextField(
          hintText: 'Password',
          validator: (value) {},
        ),
        verticalSpace(16.h),
        CustomTextField(
          hintText: 'Confirm Password',
          validator: (value) {},
        ),
        verticalSpace(16.h),
        verticalSpace(16.h),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: ColorsManager.moreLightGray,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration.collapsed(hintText: ''),
            hint: Text(
              'Gender',
              style: TextStyles.font14GrayRegular,
            ),
            items: ['Male', 'Female']
                .map((gender) => DropdownMenuItem(
                      value: gender.toLowerCase(),
                      child: Text(
                        gender,
                      ),
                    ))
                .toList(),
            onChanged: (value) {},
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select your gender';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
