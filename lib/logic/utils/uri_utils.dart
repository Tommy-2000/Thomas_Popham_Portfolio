import 'package:thomas_popham_portfolio/constants/email_strings.dart' as emailStrings;
import 'package:thomas_popham_portfolio/constants/uri_strings.dart' as uriStrings;
import 'package:url_launcher/url_launcher.dart';

class UriUtils {
  String? encodeQueryParameters(Map<String, String> queryParams) {
    return queryParams.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  late final Uri emailUri = Uri(
    scheme: emailStrings.emailScheme,
    path: emailStrings.developerEmail,
    query: encodeQueryParameters(<String, String>{
      emailStrings.emailQueryKey: emailStrings.emailQueryValue,
    }),
  );

  late final Uri linkedInUri = Uri.parse(uriStrings.LINKEDIN_URL);
  late final Uri gitHubUri = Uri.parse(uriStrings.GITHUB_URL);
  late final Uri mediumUri = Uri.parse(uriStrings.MEDIUM_URL);

  Future<void> sendFormEmail(
    String emailAddress,
    String emailSubject,
    String emailBody,
  ) async {
    var emailUri = Uri.parse(
      'mailto:$emailAddress?subject=$emailSubject&body=$emailBody',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw Exception('Could not launch $emailUri');
    }
  }

  Future<void> launchNewEmailInWindow() async {
    if (!await launchUrl(emailUri, mode: LaunchMode.externalApplication)) {
      throw Exception(emailStrings.emailOpenException);
    }
  }

  Future<void> launchLinkedIn() async {
    if (!await launchUrl(linkedInUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchGitHub() async {
    if (!await launchUrl(gitHubUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchMedium() async {
    if (!await launchUrl(mediumUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.MEDIUM_URL_EXCEPTION);
    }
  }

  late final Uri blogPost1LinkedIn = Uri.parse(
    uriStrings.BLOG_POST_1_LINKEDIN,
  );

  late final Uri blogArticle1Medium = Uri.parse(
    uriStrings.BLOG_ARTICLE_1_MEDIUM,
  );

  late final Uri blogPost2LinkedIn = Uri.parse(
    uriStrings.BLOG_POST_2_LINKEDIN,
  );

  late final Uri blogPost3LinkedIn = Uri.parse(
    uriStrings.BLOG_POST_3_LINKEDIN,
  );

  late final Uri blogPost4LinkedIn = Uri.parse(uriStrings.BLOG_POST_4_LINKEDIN);

  late final Uri blogPost5LinkedIn = Uri.parse(uriStrings.BLOG_POST_5_LINKEDIN);

  late final Uri blogPost6LinkedIn = Uri.parse(uriStrings.BLOG_POST_6_LINKEDIN);

  late final Uri blogArticle6Medium = Uri.parse(uriStrings.BLOG_ARTICLE_6_MEDIUM);

  late final Uri blogPost7LinkedIn = Uri.parse(uriStrings.BLOG_POST_7_LINKEDIN);

  late final Uri blogPost8LinkedIn = Uri.parse(uriStrings.BLOG_POST_8_LINKEDIN);

  late final Uri blogArticle8Medium = Uri.parse(uriStrings.BLOG_ARTICLE_8_MEDIUM);

  late final Uri emmaGotoVideo = Uri.parse(uriStrings.EMMA_GOTO_VIDEO_URL);

  late final Uri dreamStudyUri = Uri.parse(
    uriStrings.GITHUB_DREAMSTUDY_URL,
  );
  late final Uri dreamTravelUri = Uri.parse(
    uriStrings.GITHUB_DREAMTRAVEL_URL,
  );
  late final Uri dreamCharterUri = Uri.parse(
    uriStrings.GITHUB_DREAMCHARTER_URL,
  );
  late final Uri madProjectUri = Uri.parse(
    uriStrings.GITHUB_MAD_URL,
  );
  late final Uri aifProjectUri = Uri.parse(
    uriStrings.GITHUB_AIF_URL,
  );
  late final Uri mlProjectUri = Uri.parse(
    uriStrings.GITHUB_ML_URL,
  );
  late final Uri oopProjectUri = Uri.parse(
    uriStrings.GITHUB_OOP_URL,
  );
  
  late final Uri graduatesFirstUri = Uri.parse(uriStrings.GRADUATES_FIRST_URL);

  late final Uri sovaAssessmentsUri = Uri.parse(uriStrings.SOVA_ASSESSMENTS_URL);

  late final Uri assessmentDayUri = Uri.parse(uriStrings.ASSESSMENT_DAY_URL);

  late final Uri hackerRankUri = Uri.parse(uriStrings.HACKERRANK_URL);

  late final Uri brilliantUri = Uri.parse(uriStrings.BRILLIANT_URL);

  Future<void> launchEmmaGotoVideo() async {
    if (!await launchUrl(emmaGotoVideo, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

  Future<void> launchDreamCharterProject() async {
    if (!await launchUrl(dreamCharterUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchDreamStudyProject() async {
    if (!await launchUrl(dreamStudyUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchDreamTravelProject() async {
    if (!await launchUrl(
      dreamTravelUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchMADProject() async {
    if (!await launchUrl(madProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchAIFProject() async {
    if (!await launchUrl(aifProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchMLProject() async {
    if (!await launchUrl(mlProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchOOPProject() async {
    if (!await launchUrl(oopProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.GITHUB_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost1LinkedIn() async {
    if (!await launchUrl(blogPost1LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost2LinkedIn() async {
    if (!await launchUrl(blogPost2LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost3LinkedIn() async {
    if (!await launchUrl(blogPost3LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost4LinkedIn() async {
    if (!await launchUrl(blogPost4LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost5LinkedIn() async {
    if (!await launchUrl(blogPost5LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost6LinkedIn() async {
    if (!await launchUrl(blogPost6LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost7LinkedIn() async {
    if (!await launchUrl(blogPost7LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogPost8LinkedIn() async {
    if (!await launchUrl(blogPost8LinkedIn, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.LINKEDIN_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogArticle1Medium() async {
    if (!await launchUrl(blogArticle1Medium, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.MEDIUM_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogArticle6Medium() async {
    if (!await launchUrl(blogArticle6Medium, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.MEDIUM_URL_EXCEPTION);
    }
  }

  Future<void> launchBlogArticle8Medium() async {
    if (!await launchUrl(blogArticle8Medium, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.MEDIUM_URL_EXCEPTION);
    }
  }

  Future<void> launchGraduatesFirst() async {
    if (!await launchUrl(graduatesFirstUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

  Future<void> launchSovaAssessments() async {
    if (!await launchUrl(sovaAssessmentsUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

  Future<void> launchAssessmentDay() async {
    if (!await launchUrl(assessmentDayUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

  Future<void> launchHackerRank() async {
    if (!await launchUrl(hackerRankUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

  Future<void> launchBrilliant() async {
    if (!await launchUrl(brilliantUri, mode: LaunchMode.externalApplication)) {
      throw Exception(uriStrings.WEBSITE_URL_EXCEPTION);
    }
  }

}
