import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';
import 'package:iflux_shot/view_model/home_vm.dart';
import 'package:iflux_shot/widgets/dot_indicator.dart';
import 'package:iflux_shot/widgets/list_tabs.dart';
import 'package:iflux_shot/widgets/quick_link_tabs.dart';
import 'package:iflux_shot/widgets/wallet_type_card.dart';
import 'package:provider/provider.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
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
                cardColor: blue,
                onPressed: () => model.shouldShow(),
                opacity: model.show,
                show: model.show,
                walletName: "Flux Wallet",
                amount: "50"),
          ),
        ),
        verticalSpace(35),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            "QUICK LINK",
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27, vertical: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QuickLinkTabs(
                image: "plus.png",
                name: "Add Money",
              ),
              horizontalSpaceMedium,
              QuickLinkTabs(
                image: "send.png",
                name: "Send Money",
              ),
              horizontalSpaceMedium,
              QuickLinkTabs(
                image: "withdraw.png",
                name: "Withdraw",
              ),
            ],
          ),
        ),
        Container(
          child: Expanded(
            child: ListView(
              children: [
                ListTabs(
                  image: "gain",
                  name: "Amarachi Destiny",
                  date: "11 Sep 2020",
                  price: "+NGN 840.00",
                  boxColor: gainLight,
                  iconColor: gain,
                ),
                ListTabs(
                  iconColor: loss,
                  boxColor: lossLight,
                  image: "loss",
                  name: "Prince Chukwudire",
                  date: "11 Sep 2020",
                  price: "-NGN 840.00",
                ),
                ListTabs(
                  boxColor: gainLight,
                  iconColor: gain,
                  image: "gain",
                  name: "Favor Adewunmi",
                  date: "11 Sep 2020",
                  price: "+NGN 840.00",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
