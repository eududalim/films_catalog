import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        width: 90,
        height: 34,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [BoxShadow(color: Colors.black54)]),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.arrow_back_ios_rounded, size: 11, color: Colors.grey[500]),
          Text(
            'Voltar',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey[600]),
          )
        ]),
      ),
    );
  }
}
