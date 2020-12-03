import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';

class ListTabs extends StatefulWidget {
  final String image;
  final String name;
  final String date;
  final String price;
  final Color boxColor;
  final Color iconColor;

  const ListTabs({
    Key key,
    @required this.image,
    @required this.name,
    @required this.date,
    @required this.price,
    @required this.boxColor,
    @required this.iconColor,
  }) : super(key: key);
  @override
  _ListTabsState createState() => _ListTabsState();
}

class _ListTabsState extends State<ListTabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: screenHeight(context) / 12,
            width: screenWidth(context) / 6,
            decoration: BoxDecoration(
              color: widget.boxColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: ImageIcon(
                AssetImage("images/${widget.image}.png"),
                color: widget.iconColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: nameColor),
              ),
              Text(
                widget.date,
                style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: dateColor),
              )
            ],
          ),
          Text(
            widget.price,
            style: GoogleFonts.nunitoSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: widget.iconColor),
          )
        ],
      ),
    );
  }
}
