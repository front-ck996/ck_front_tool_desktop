import 'package:ck_front_tool_dart/utils/u_color.dart';
import 'package:flutter/material.dart';

class CuiTagItem extends StatelessWidget {
  String title;
  CuiTagItem({required this.title,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50)
      ),
      margin: const EdgeInsets.only(left: 2, right: 2),
      padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Container(
            child: const Icon(Icons.close, size: 15,),
          )
        ],
      ),
    );
  }
}
