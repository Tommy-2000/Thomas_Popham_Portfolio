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


  Future<void> sendFormEmail(String emailAddress, String emailSubject, String emailBody) async {
    var emailUri = Uri.parse('mailto:$emailAddress?subject=$emailSubject&body=$emailBody');
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw Exception('Could not launch $emailUri');
    }
  }

  Future<void> launchNewEmailInWindow() async {
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

  late final Uri dreamCareUri = Uri.parse("https://github.com/Tommy-2000/dreamCare");
  late final Uri dreamTravelUri = Uri.parse("https://github.com/Tommy-2000/dreamTravel");
  late final Uri madProjectUri = Uri.parse("https://github.com/Tommy-2000/TravelHopper_Android");
  late final Uri aifProjectUri = Uri.parse("https://github.com/Tommy-2000/Video_Game_AI_Solution_Pathfinding_Experiment");
  late final Uri mlProjectUri = Uri.parse("https://github.com/Tommy-2000/British_Sign_Language_Multi-Class_Classification");
  late final Uri oopProjectUri = Uri.parse("https://github.com/Tommy-2000/Stock_Management_App_Java_Group_Project");

  Future<void> launchDreamCareProject() async {
    if (!await launchUrl(dreamCareUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchDreamTravelProject() async {
    if (!await launchUrl(dreamTravelUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchMADProject() async {
    if (!await launchUrl(madProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchAIFProject() async {
    if (!await launchUrl(aifProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchMLProject() async {
    if (!await launchUrl(mlProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }

  Future<void> launchOOPProject() async {
    if (!await launchUrl(oopProjectUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open GitHub page, please try again later');
    }
  }


}
