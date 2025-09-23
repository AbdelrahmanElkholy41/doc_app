import 'package:flutter/cupertino.dart';

import 'avatar_image.dart';

class DocSpeciality extends StatelessWidget {
  const DocSpeciality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
        ]);
  }
}
