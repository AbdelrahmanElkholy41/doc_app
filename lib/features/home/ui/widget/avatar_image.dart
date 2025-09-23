import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    super.key, required this.imageUrl, required this.name,
  });
final String imageUrl;
final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: const Color(0xFFF4F8FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imageUrl),
            backgroundColor: Colors.transparent,
          ),
          
        ),
        verticalSpace(12.h),
        Text(name,style:TextStyles.font13DarkBlueRegular ,)
      ],
    );
  }
}