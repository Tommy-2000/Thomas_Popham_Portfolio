import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../common/stateless_rounded_card.dart';
import '../../../common/subtitle_text.dart';
import '../../../common/title_text.dart';
import 'contact_icon_buttons.dart';
import 'contact_material_buttons.dart';
import '../../../../constants/home_strings.dart' as homeStrings;
import '../../../../constants/image_strings.dart' as imageStrings;

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
    return StatelessRoundedCard(
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleText(
                  data: homeStrings.homeString_1,
                  fontSize: 40,
                  minFontSize: 18,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SubtitleText(
                  data: homeStrings.homeString_2,
                  fontSize: 18,
                  minFontSize: 8,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SubtitleText(
                  data: homeStrings.homeString_3,
                  fontSize: 18,
                  minFontSize: 8,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textOverflow: TextOverflow.ellipsis,
                ),
                Gap(5),
                landscapeWindow ? ContactMaterialButtons() : ContactIconButtons(),
              ],
            ),
          ),
          landscapeWindow ? Gap(100) : Gap(0),
          ClipRRect(
            borderRadius: BorderRadius.circular(500),
            clipBehavior: Clip.antiAlias,
            child: Image(
              image: AssetImage(imageStrings.imageString_1),
              height: landscapeWindow ? 500 : 130,
              width: landscapeWindow ? 540 : 140,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
