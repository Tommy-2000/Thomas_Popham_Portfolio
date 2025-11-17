import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../logic/utils/email_validator.dart';
import '../../../logic/utils/uri_utils.dart';
import '../../common/cards/rounded_card.dart';

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
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: contactFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: fullNameController,
                  validator: (fullNameValue) {
                    if (fullNameValue == null || fullNameValue.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
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
                  validator: (emailValue) =>
                      emailValue != null && !EmailValidator.validate(emailValue)
                      ? 'Please enter a valid email address'
                      : null,
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
                  validator: (messageValue) {
                    if (messageValue == null || messageValue.isEmpty) {
                      return 'Please enter your message';
                    }
                    return null;
                  },
                  maxLines: 10,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: () => {
                        if (contactFormKey.currentState!.validate())
                          {
                            UriUtils().sendFormEmail(
                              emailController.text,
                              fullNameController.text,
                              messageController.text,
                            ),
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Your form has been sent!"),
                              ),
                            ),
                          },
                      },
                      child: Row(
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedMailSend01,
                            size: 24.0,
                            color: colourScheme.primary,
                            strokeWidth: 1.5,
                          ),
                          Gap(5),
                          Text("Send"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
