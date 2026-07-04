import 'package:doc_advance/core/theming/color_manager.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Mohamed!', style: TextStyles.font18DarkBlueBold),
            Text('How Are you Today?', style: TextStyles.font12grayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorManager.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        ),
      ],
    );
  }
}
