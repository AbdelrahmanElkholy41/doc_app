import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class RecoDoc extends StatelessWidget {
  const RecoDoc({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imageUrl,
            width: 110.w,
            height: 110.h,
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dr. Randy Wigham',style: TextStyles.font18DarkBlueSemiBold,),
            verticalSpace(8.h),
            Text('General | Dr. Randy Wigham',style: TextStyles.font13GrayRegular,),
            verticalSpace(8.h),
            Text('(4,279 reviews)',style: TextStyles.font13GrayRegular,)

          ],
        )

      ],
    );
  }
}