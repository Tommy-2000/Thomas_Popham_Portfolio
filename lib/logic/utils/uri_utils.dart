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


  Future<void> launchNewEmail() async {
    if (!await launchUrl(emailUri)) {
      throw Exception('Could not create a new email, please try again later');
    }
  }


}
