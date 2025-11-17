import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../logic/utils/uri_utils.dart';

class ContactButtonColumn extends StatelessWidget {
  const ContactButtonColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(140, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchNewEmailInWindow,
          child: Row(
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedMail01,
                size: 24.0,
                color: Colors.green,
                strokeWidth: 1.5,
              ),
              Gap(5),
              Text("Email"),
            ],
          ),
        ),
        Gap(5),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(140, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchLinkedIn,
          child: Row(
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedLinkedin01,
                size: 24.0,
                color: Colors.green,
                strokeWidth: 1.5,
              ),
              Gap(5),
              Text("LinkedIn"),
            ],
          ),
        ),
        Gap(5),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(140, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchGitHub,
          child: Row(
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub01,
                size: 24.0,
                color: Colors.green,
                strokeWidth: 1.5,
              ),
              Gap(5),
              Text("GitHub"),
            ],
          ),
        ),
        Gap(5),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(140, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          onPressed: UriUtils().launchMedium,
          child: Row(
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedMedium,
                size: 24.0,
                color: Colors.green,
                strokeWidth: 1.5,
              ),
              Gap(5),
              Text("Medium"),
            ],
          ),
        ),
      ],
    );
  }
}