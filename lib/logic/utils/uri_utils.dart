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
    scheme: emailStrings.EMAIL_SCHEME,
    path: emailStrings.DEVELOPER_EMAIL,
    query: encodeQueryParameters(<String, String>{
      emailStrings.EMAIL_QUERY_KEY: emailStrings.EMAIL_QUERY_VALUE,
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
      throw Exception(emailStrings.EMAIL_OPEN_EXCEPTION);
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

  late final Uri dreamCareUri = Uri.parse(
    uriStrings.GITHUB_DREAMCARE_URL,
  );
  late final Uri dreamTravelUri = Uri.parse(
    uriStrings.GITHUB_DREAMTRAVEL_URL,
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

  Future<void> launchDreamCareProject() async {
    if (!await launchUrl(dreamCareUri, mode: LaunchMode.externalApplication)) {
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
}
