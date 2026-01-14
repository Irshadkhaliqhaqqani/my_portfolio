import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPlatformButtons extends StatefulWidget {
  const SocialMediaPlatformButtons({super.key});

  @override
  State<SocialMediaPlatformButtons> createState() =>
      _SocialMediaPlatformButtonsState();
}

class _SocialMediaPlatformButtonsState
    extends State<SocialMediaPlatformButtons> {
  Future<void> _launchURL(BuildContext context, String urlString) async {
    final Uri url = Uri.parse(urlString);
    try {
      // 1. Try to launch with external application mode
      final bool launched = await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // <--- IMPORTANT FIX
      );

      if (!launched) {
        throw 'Could not launch $urlString';
      }
    } catch (e) {
      // 2. Catch the crash so the app doesn't close
      debugPrint("Error launching URL: $e");

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Could not open link. Error: $e"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.7;
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      height: 60,
      width: isMobile ? width : 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusCircular),
        border: Border.all(color: Color.fromARGB(82, 120, 120, 120)),
        gradient: const LinearGradient(
          colors: [Color(0xFF1C1C1C), Color(0xFF171717)],
        ),
      ),
      // Buttonss
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialMediaIcons(
            imageUrl: 'assets/linkedin (1).webp',
            OnTap: () =>
                _launchURL(context, "http://linkedIn/irshadkhaliqhaqqani"),
          ),
          SocialMediaIcons(
            imageUrl: 'assets/social.webp',
            OnTap: () =>
                _launchURL(context, "https://github.com/irshadkhaliqhaqqani"),
          ),
          SocialMediaIcons(
            imageUrl: 'assets/facebook (1).webp',
            OnTap: () => _launchURL(
              context,
              "https://www.facebook.com/profile.php?id=100068720356699",
            ),
          ),
          SocialMediaIcons(
            imageUrl: 'assets/instagram (1).webp',
            OnTap: () =>
                _launchURL(context, "http://instagram.com/irshadkhaliqhaqqani"),
          ),
        ],
      ),
    );
  }
}
