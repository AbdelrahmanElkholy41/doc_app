import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ImageAndFindNearby extends StatelessWidget {
  const ImageAndFindNearby({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: ColorsManager.mainBlue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book and\nschedule with\nnearest doctor",
                      style: TextStyles.font18WhiteMedium,
                    ),
                    verticalSpace(15.h),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Add navigation
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Find Nearby"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 16,
          top: -35,
          child: Image.asset(
            height: MediaQuery.of(context).size.height * 0.223,
            "assets/images/doctor.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
