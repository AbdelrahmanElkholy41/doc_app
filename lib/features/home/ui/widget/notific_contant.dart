import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class NotificCont extends StatelessWidget {
  const NotificCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.05),
        //     blurRadius: 6,
        //     offset: const Offset(0, 2),
        //   ),
        //],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Icon with background
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.green,
            ),
          ),
          horizontalSpace(12.w),

          // ✅ Title + description + time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title + Time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Appointment Success',
                      style: TextStyles.font14DarkBlueBold,
                    ),
                    Text(
                      '1h',
                      style: TextStyles.font13GrayRegular,
                    ),
                  ],
                ),
                verticalSpace(6.h),
                Text(
                  "Congratulations - your appointment is confirmed! We're looking forward to meeting with you and helping you achieve your goals.",
                  style: TextStyles.font13GrayRegular,
                ),
              ],
            ),
          ),
          verticalSpace(24.h),
        ],
      ),
    );
  }
}
