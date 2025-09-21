import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/home/ui/widget/avatar_image.dart';
import 'package:flutter_complete_project/features/home/ui/widget/reco_doc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Omar!',
                      style: TextStyles.font24BlackBold,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_outlined,
                          size: 30.sp,
                        ))
                  ],
                ),
                Text(
                  'How Are you Today?',
                  style: TextStyles.font12GrayRegular,
                ),
                verticalSpace(16.h),
                Stack(
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
                ),
                verticalSpace(24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctor Speciality',
                      style: TextStyles.font18DarkBlueSemiBold,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'See All',
                          style: TextStyles.font13BlueRegular,
                        ))
                  ],
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AvatarImage(
                        imageUrl: 'assets/images/man_doc.png',
                        name: 'General',
                      ),
                      AvatarImage(
                        imageUrl: 'assets/images/Brain.png',
                        name: 'Neurologic',
                      ),
                      AvatarImage(
                        imageUrl: 'assets/images/baby.png',
                        name: 'Pediatric',
                      ),
                      AvatarImage(
                        imageUrl: 'assets/images/Kidneys.png',
                        name: 'Radiology',
                      ),
                    ]),
                verticalSpace(23.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommendation Doctor',
                      style: TextStyles.font18DarkBlueSemiBold,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                  ],
                ),
                verticalSpace(12.h),
                const RecoDoc(imageUrl: 'assets/images/doc1.png',),
                verticalSpace(24.h),
                const RecoDoc(imageUrl: 'assets/images/doc1.png',),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


