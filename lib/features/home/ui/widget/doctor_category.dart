import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       leading: Container(
         decoration: ShapeDecoration(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(24),
             side: const BorderSide(
               width: 1,
               color: ColorsManager.lighterGray,
               strokeAlign: BorderSide.strokeAlignOutside,
               style: BorderStyle.solid,)
           )
         ),
         child: IconButton(onPressed:(){
           context.pop();
         }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
       ),
        centerTitle: true,
        title: Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBlueBold,
        ),
      ),
      body:Column(

      ),
    );
  }
}
