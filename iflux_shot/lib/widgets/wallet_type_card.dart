import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';

class WalletType extends StatefulWidget {
  final bool opacity;
  final String amount;
  final String walletName;
  final Function onPressed;
  final bool show;
  final Color cardColor;

  const WalletType(
      {Key key,
      this.opacity,
      @required this.amount,
      @required this.walletName,
      this.onPressed,
      @required this.show,
      @required this.cardColor})
      : super(key: key);

  @override
  _WalletTypeState createState() => _WalletTypeState();
}

class _WalletTypeState extends State<WalletType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 6,
      width: screenWidth(context),
      decoration: BoxDecoration(
        color: widget.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(25),
          Padding(
            padding: const EdgeInsets.only(left: 27.0),
            child: Text(
              "Balance",
              style: GoogleFonts.nunitoSans(
                color: white,
                fontWeight: FontWeight.w400,
                fontSize: screenHeight(context) / 45,
              ),
            ),
          ),
          verticalSpace(30),
          Padding(
            padding: const EdgeInsets.only(left: 27.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: widget.opacity ? 1.0 : 0.0,
                  child: Text(
                    "NGN ${widget.amount}",
                    style: GoogleFonts.openSans(
                      color: white,
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight(context) / 24,
                    ),
                  ),
                ),
                IconButton(
                  icon: widget.show
                      ? Icon(
                          Icons.visibility_off,
                          color: white,
                        )
                      : Icon(
                          Icons.visibility,
                          color: white,
                        ),
                  onPressed: widget.onPressed,
                ),
              ],
            ),
          ),
          verticalSpace(5),
          Padding(
            padding: const EdgeInsets.only(left: 27.0),
            child: Text(
              widget.walletName,
              style: GoogleFonts.nunitoSans(
                color: white,
                fontWeight: FontWeight.w400,
                fontSize: screenHeight(context) / 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
