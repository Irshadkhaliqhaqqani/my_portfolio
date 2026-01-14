import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTiles extends StatefulWidget {
  final String heading;
  final String bodyText;
  final String svgName;
  final String lastSvgName;
  final String onTapUrl;
  const ContactTiles({
    super.key,
    required this.heading,
    required this.bodyText,
    required this.svgName,
    required this.lastSvgName,
    required this.onTapUrl,
  });

  @override
  State<ContactTiles> createState() => _ContactTilesState();
}

class _ContactTilesState extends State<ContactTiles> {
  bool _isHovering = false;
  // Click to open the link external app
  Future<void> _launch() async {
    final uri = Uri.parse(widget.onTapUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch ${widget.onTapUrl}";
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return InkWell(
      onTap: _launch,
      onHover: (hovering) {
        setState(() {
          _isHovering = hovering;
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.all(10),
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isHovering ? Colors.grey.shade900 : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    widget.svgName,
                    height: isMobile ? 22 : 30,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                SizedBox(width: isMobile ? 10 : 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.heading,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isMobile ? 14 : 16,
                      ),
                    ),
                    Text(widget.bodyText, style: AppStyles.bodyText),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
