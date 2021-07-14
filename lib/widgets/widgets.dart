import 'package:flutter/material.dart';
import 'package:get/get.dart';


// class for search bar
class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed("/searchPage");
      },
      child: Container(
        padding: EdgeInsets.all(3.0),
        color: Color(0xFFE8F0F5),
        width: double.infinity,
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.black,),
            Text(
              "Search",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black
              ),
            ),
            Spacer(),
            Icon(Icons.qr_code_2_rounded, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}


// class for
