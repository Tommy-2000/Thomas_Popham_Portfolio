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
    final colourScheme = Theme.of(context).colorScheme;

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
                style: TextStyle(color: colourScheme.primary),
                decoration: InputDecoration(
                  label: const Text("Full Name"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: colourScheme.primary),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              TextFormField(
                controller: emailController,
                style: TextStyle(color: colourScheme.primary),
                decoration: InputDecoration(
                  label: const Text("Email Address"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: colourScheme.primary),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              TextFormField(
                controller: messageController,
                style: TextStyle(color: colourScheme.primary),
                decoration: InputDecoration(
                  label: const Text("Your Message"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: colourScheme.primary),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
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
                      color: colourScheme.primary,
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
