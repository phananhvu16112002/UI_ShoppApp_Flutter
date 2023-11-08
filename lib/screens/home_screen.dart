import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar() ,
      body:Body(),
    );
  }


  AppBar _buildAppBar(){
    return AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
                onPressed: null,
                icon: SvgPicture.asset("assets/icons/search.svg",
                    color: kTextColor)),
            IconButton(
                onPressed: null,
                icon: SvgPicture.asset("assets/icons/cart.svg",
                    color: kTextColor)),
            SizedBox(
              width: kDefaultPadding / 2,
            )
          ]);
  }
}
