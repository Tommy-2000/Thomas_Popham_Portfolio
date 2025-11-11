import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'contact_button_column.dart';
import 'contact_button_row.dart';
import '../../common/cards/rounded_card.dart';
import '../../common/subtitle_text.dart';
import '../../common/title_text.dart';

class HomeBannerCard extends StatefulWidget {
  const HomeBannerCard({super.key});

  @override
  State<HomeBannerCard> createState() => _HomeBannerCardState();
}

class _HomeBannerCardState extends State<HomeBannerCard> {

  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleText(
                  data: "Hi there! I'm Thomas Popham",
                  fontSize: 40,
                  minFontSize: 20,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SubtitleText(
                  data: "Graduate Software Developer and 3D Animator",
                  fontSize: 20,
                  minFontSize: 10,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                landscapeWindow ? ContactButtonRow() : ContactButtonColumn(),
              ],
            ),
          ),
          Gap(100),
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image(
              image: AssetImage('assets/profile_image_2025.jpg'),
              height: landscapeWindow ? 500 : 300,
              width: landscapeWindow ? 540 : 340,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
