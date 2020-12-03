import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iflux_shot/utils/color.dart';
import 'package:iflux_shot/utils/spacing.dart';
import 'package:iflux_shot/view_model/home_vm.dart';
import 'package:iflux_shot/views/address.dart';
import 'package:iflux_shot/views/main_home.dart';
import 'package:iflux_shot/views/more.dart';
import 'package:iflux_shot/views/wallet.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _widgetOptions = <Widget>[
    MainHomeScreen(),
    WalletScreen(),
    AddressScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>.withConsumer(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, _) => Scaffold(
        backgroundColor: white,
        bottomNavigationBar: BottomNavigationBar(
          // selectedItemColor: blue,
          unselectedItemColor: bottomNav,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/home.png"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/wallet.png"),
                ),
                label: "Wallet"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/address.png"),
                ),
                label: "Address"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/more.png"),
                ),
                label: "More"),
          ],
          currentIndex: model.selectedIndex,
          selectedItemColor: Color(0xff2079A5),
          onTap: (value) => model.onItemTapped(value),
        ),
        body: _widgetOptions.elementAt(model.selectedIndex),
      ),
    );
  }
}
