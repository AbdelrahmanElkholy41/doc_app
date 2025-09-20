import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class SignUpOther extends StatelessWidget {
  const SignUpOther({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: () {},
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: ColorsManager.moreLightGray,
            ),
            child: Image.asset(
              'assets/images/Logo.png',
            )),
      ),
      horizontalSpace(32.h),
      GestureDetector(
        onTap: () {},
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: ColorsManager.moreLightGray,
            ),
            child: Image.asset('assets/images/fac.png')),
      ),
      horizontalSpace(32.h),
      GestureDetector(
        onTap: () {},
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: ColorsManager.moreLightGray,
            ),
            child: Image.asset('assets/images/app.png')),
      ),
    ]);
  }
}
