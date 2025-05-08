import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taski/common/global_variables.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  final String name = 'John Doe';
  final String avatar = 'assets/images/avatar.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildHeaderLogo(), _buildHeaderUser(name, avatar)],
      ),
    );
  }
}

Widget _buildHeaderLogo() {
  return Row(
    children: [
      SvgPicture.asset('assets/images/logo.svg', width: 25, height: 25),
      SizedBox(width: 10),
      Text('Taski', style: textStyleHeader),
    ],
  );
}

Widget _buildHeaderUser(String name, String avatar) {
  return Row(
    children: [
      Text(name, style: textStyleHeader),
      SizedBox(width: 10),
      CircleAvatar(radius: 20, backgroundImage: AssetImage(avatar)),
    ],
  );
}
