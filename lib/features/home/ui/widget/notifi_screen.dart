import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import 'notific_contant.dart';

class NotifiScreen extends StatelessWidget {
  const NotifiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(
                width: 1,
                color: ColorsManager.lighterGray,
                strokeAlign: BorderSide.strokeAlignOutside,
                style: BorderStyle.solid,
              ),
            )),
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
              padding: const EdgeInsets.all(8),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Notifications', style: TextStyles.font18DarkBlueBold),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.mainBlue,
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '2 NEW',
                    style: TextStyles.font16WhiteMedium.copyWith(fontSize: 14),
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyles.font13GrayRegular,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Mark all as read',
                        style: TextStyles.font13BlueRegular,
                      )),
                ],
              ),
              verticalSpace(32.h),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return const NotificCont();
                  }, 
                  )
            ],
          ),
        ),
      ),
    );
  }
}


