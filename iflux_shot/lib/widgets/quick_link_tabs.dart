import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';

class QuickLinkTabs extends StatefulWidget {
  final String image;
  final String name;

  const QuickLinkTabs({Key key, this.image, this.name = ""}) : super(key: key);
  @override
  _QuickLinkTabsState createState() => _QuickLinkTabsState();
}

class _QuickLinkTabsState extends State<QuickLinkTabs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: screenHeight(context) / 10,
          width: screenWidth(context) / 5,
          decoration: BoxDecoration(
            color: faintBlue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: ImageIcon(
              AssetImage("images/${widget.image}"),
              color: paleBlue,
            ),
          ),
        ),
        Text(
          widget.name,
          style: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w400, color: typeBlack),
        )
      ],
    );
  }
}
