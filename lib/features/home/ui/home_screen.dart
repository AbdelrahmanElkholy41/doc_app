import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/home/ui/widget/doc_speciality.dart';
import 'package:flutter_complete_project/features/home/ui/widget/image_and_find_nearby.dart';
import 'package:flutter_complete_project/features/home/ui/widget/reco_doc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 72.sp,
        height: 72.sp,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.sp),
          ),
          onPressed: () {},
          backgroundColor: ColorsManager.mainBlue,
          elevation: 8, // يعطي ظل للزر العائم
          child: Icon(
            Icons.search,
            size: 30.sp,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    icon: Icon(
                      AkarIcons.home,
                      size: 25 .sp,
                      color: currentIndex == 0
                          ? ColorsManager.mainBlue
                          : Colors.black,
                    ),
                  ),
                  horizontalSpace(25.w),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      icon: Icon(
                        AkarIcons.chat_dots,
                        size: 25.sp,
                        color: currentIndex == 1
                            ? ColorsManager.mainBlue
                            : Colors.black,
                      ))
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    icon: Icon(
                      AkarIcons.calendar,
                      size: 25.sp,
                      color: currentIndex == 2
                          ? ColorsManager.mainBlue
                          : Colors.black,
                    ),
                  ),
                  horizontalSpace(25.w),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                      icon: Icon(
                        Icons.person,
                        size: 25.sp,
                        color: currentIndex == 3
                            ? ColorsManager.mainBlue
                            : Colors.black,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
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
                      onPressed: () {
                        context.pushNamed(Routes.notificationScreen);
                      },
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        size: 25.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  'How Are you Today?',
                  style: TextStyles.font12GrayRegular,
                ),
                verticalSpace(16.h),
                const ImageAndFindNearby(),
                verticalSpace(24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctor Speciality',
                      style: TextStyles.font18DarkBlueSemiBold,
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.doctorCategoryScreen);
                      },
                      child: Text(
                        'See All',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                  ],
                ),
                const DocSpeciality(),
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
                const RecoDoc(imageUrl: 'assets/images/doc1.png'),
                verticalSpace(24.h),
                const RecoDoc(imageUrl: 'assets/images/doc1.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
