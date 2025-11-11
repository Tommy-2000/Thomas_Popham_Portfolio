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
    scheme: 'mailto',
    path: 'dreamdev.tommy.2000@outlook.com',
    query: encodeQueryParameters(<String, String>{
      'subject':
          'Hi there! I came across your portfolio and wanted to talk about your experience...',
    }),
  );

  late final Uri linkedInUri = Uri.parse("https://www.linkedin.com/in/thomas-popham/");
  late final Uri gitHubUri = Uri.parse("https://github.com/Tommy-2000");
  late final Uri mediumUri = Uri.parse("https://medium.com/@tommy-2000");


  Future<void> launchNewEmail() async {
    if (!await launchUrl(emailUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not create a new email, please try again later');
    }
  }

  Future<void> launchLinkedIn() async {
    if (!await launchUrl(linkedInUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open LinkedIn page, please try again later');
    }
  }

  Future<void> launchGitHub() async {
    if (!await launchUrl(gitHubUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open LinkedIn page, please try again later');
    }
  }

  Future<void> launchMedium() async {
    if (!await launchUrl(mediumUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open LinkedIn page, please try again later');
    }
  }


}
