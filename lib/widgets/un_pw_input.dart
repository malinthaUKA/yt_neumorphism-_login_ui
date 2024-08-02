import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:yt_neumorphism_login_ui/const.dart';

Widget inputPassword(
    String title, Icon icon, TextEditingController controller, bool bool) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      const SizedBox(
        height: 2,
      ),
      Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: darkColor.withOpacity(0.4),
                blurRadius: 2,
                offset: Offset(5, 5),
                inset: true),
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(-4, -4),
              inset: true,
            ),
          ],
        ),
        child: TextFormField(
          obscureText: bool,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: icon,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          ),
        ),
      ),
    ],
  );
}
