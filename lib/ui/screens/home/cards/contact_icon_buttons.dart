import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../logic/utils/uri_utils.dart';

class ContactIconButtons extends StatelessWidget {
  const ContactIconButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: Size(10, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchNewEmailInWindow,
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedMail01,
            size: 24.0,
            color: Colors.green,
            strokeWidth: 1.5,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: Size(10, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchLinkedIn,
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            size: 24.0,
            color: Colors.green,
            strokeWidth: 1.5,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: Size(10, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchGitHub,
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub01,
            size: 24.0,
            color: Colors.green,
            strokeWidth: 1.5,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: Size(10, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchMedium,
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedMedium,
            size: 24.0,
            color: Colors.green,
            strokeWidth: 1.5,
          ),
        ),
      ],
    );
  }
}