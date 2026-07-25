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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Rerender the UI if the width from MediaQuery is greater than 900
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
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
                landscapeWindow
                    ? Gap(0)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(600),
                        clipBehavior: Clip.hardEdge,
                        child: Image(
                          image: AssetImage(imageStrings.imageString_1),
                          height: 190,
                          width: 210,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.medium,
                        ),
                      ),
                TitleText(
                  data: homeStrings.homeString_Title,
                  fontSize: 40,
                  minFontSize: 18,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SubtitleText(
                  data: homeStrings.homeString_1,
                  fontSize: 18,
                  minFontSize: 8,
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
                Gap(5),
                landscapeWindow
                    ? ContactMaterialButtons()
                    : ContactIconButtons(),
              ],
            ),
          ),
          landscapeWindow ? Gap(100) : Gap(0),
          landscapeWindow
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(600),
                  clipBehavior: Clip.hardEdge,
                  child: Image(
                    image: AssetImage(imageStrings.imageString_1),
                    height: 310,
                    width: 340,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                )
              : Gap(0),
        ],
      ),
    );
  }
}
