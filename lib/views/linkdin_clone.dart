import 'package:flutter/material.dart';


class LinkdinClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a8/Bill_Gates_2017_%28cropped%29.jpg'),
          ),
        ),
        title: Text('search bar', style: TextStyle(color: Colors.red),),
      ),
      body: MainBodyClone(),
    );
  }
}

class MainBodyClone extends StatelessWidget {
  const MainBodyClone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}
