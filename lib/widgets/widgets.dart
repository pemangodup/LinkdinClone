import 'package:flutter/material.dart';

// class for search bar
class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFFE8F0F5),
      ),
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
    );
  }
}


// class for
