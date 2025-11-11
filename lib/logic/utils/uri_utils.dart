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
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchMedium() async {
    if (!await launchUrl(mediumUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open Medium page, please try again later');
    }
  }

  late final Uri gitHubProject1Uri = Uri.parse("https://github.com/Tommy-2000/dreamCare");
  late final Uri gitHubProject2Uri = Uri.parse("https://github.com/Tommy-2000/dreamTravel");
  late final Uri gitHubProject3Uri = Uri.parse("https://github.com/Tommy-2000/TravelHopper_Android");
  late final Uri gitHubProject4Uri = Uri.parse("https://github.com/Tommy-2000/Video_Game_AI_Solution_Pathfinding_Experiment");
  late final Uri gitHubProject5Uri = Uri.parse("https://github.com/Tommy-2000/British_Sign_Language_Multi-Class_Classification");
  late final Uri gitHubProject6Uri = Uri.parse("https://github.com/Tommy-2000/Stock_Management_App_Java_Group_Project");

  Future<void> launchGitHubProject1() async {
    if (!await launchUrl(gitHubProject1Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchGitHubProject2() async {
    if (!await launchUrl(gitHubProject2Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchGitHubProject3() async {
    if (!await launchUrl(gitHubProject3Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchGitHubProject4() async {
    if (!await launchUrl(gitHubProject4Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchGitHubProject5() async {
    if (!await launchUrl(gitHubProject5Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchGitHubProject6() async {
    if (!await launchUrl(gitHubProject6Uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }


}
