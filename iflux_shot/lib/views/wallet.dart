import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';
import 'package:iflux_shot/view_model/home_vm.dart';
import 'package:iflux_shot/widgets/wallet_type_card.dart';
import 'package:provider/provider.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(69),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            "Goodafternoon Samuel,",
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
        verticalSpace(31),
        Container(
          height: screenHeight(context) / 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: WalletType(
                cardColor: greyGreen,
                onPressed: () => model.shouldShow(),
                opacity: model.show,
                show: model.show,
                walletName: "Crypto Wallet",
                amount: "50"),
          ),
        ),
        verticalSpace(35),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            "MY CRYPTO WALLETS",
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ),
        verticalSpace(19),
        Container(
          child: Expanded(
            child: ListView(
              children: [
                ExpansionTile(
                  title: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: bitCoin,
                      child: Image.asset("images/btc.png"),
                      radius: 30,
                    ),
                    title: Text(
                      "Bitcoin",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: blue),
                    ),
                    subtitle: Text(
                      "2.148 BTC",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: dateColor),
                    ),
                  ),
                ),
                ExpansionTile(
                  title: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: cryptoColor,
                      child: Image.asset("images/eth.png"),
                      radius: 30,
                    ),
                    title: Text(
                      "Ethereum",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: blue),
                    ),
                    subtitle: Text(
                      "9.000 ETH",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: dateColor),
                    ),
                  ),
                ),
                ExpansionTile(
                  title: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: cryptoColor,
                      child: Image.asset(
                        "images/xrp.png",
                        width: 40,
                      ),
                      radius: 30,
                    ),
                    title: Text(
                      "Ripple",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: blue),
                    ),
                    subtitle: Text(
                      "60.000 XRP",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: dateColor),
                    ),
                  ),
                ),
                ExpansionTile(
                  title: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: cryptoColor,
                      child: Image.asset(
                        "images/dgtx.png",
                        width: 30,
                      ),
                      radius: 30,
                    ),
                    title: Text(
                      "Digitex Futures",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: blue),
                    ),
                    subtitle: Text(
                      "21.903 DGTX",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: dateColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
