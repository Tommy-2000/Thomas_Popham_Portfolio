import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../logic/utils/uri_utils.dart';
import 'rounded_card.dart';

class ContactFormCard extends StatefulWidget {
  const ContactFormCard({super.key});

  @override
  State<ContactFormCard> createState() => _ContactFormCardState();
}

class _ContactFormCardState extends State<ContactFormCard> {
  @override
  Widget build(BuildContext context) {
    final contactFormKey = GlobalKey<FormState>();
    final fullNameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();

    return RoundedCard(
      child: SizedBox(
        width: 800,
        height: 300,
        child: Form(
          key: contactFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: fullNameController,
                decoration: const InputDecoration(label: Text("Full Name")),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  label: Text("Email Address"),
                ),
              ),
              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(
                  label: Text("Your Message"),
                ),
              ),
              Gap(20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: UriUtils().launchNewEmail,
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
            ],
          ),
        ),
      ),
    );
  }
}