import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkdin_clone/controllers/getx_controller.dart';
import 'package:linkdin_clone/views/main_home.dart';

class LinkdinClone extends StatefulWidget {
  const LinkdinClone({Key? key}) : super(key: key);

  @override
  State<LinkdinClone> createState() => _LinkdinClone();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LinkdinClone extends State<LinkdinClone> {
  final Controller c = Get.put(Controller());

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var _children = [
    MainBodyClone(),
    Center(child: Text('MyNetwork')),
    Center(child: Text('Post')),
    Center(child: Text('Notification')),
    Center(child: Text('Jobs')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/a/a8/Bill_Gates_2017_%28cropped%29.jpg'),
          ),
        ),
        title: search_bar(),
        actions: [
          Icon(Icons.message, color: Colors.black,),
        ],
      ),
      body: _children[_selectedIndex],
      //MainBodyClone()
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'My Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Jobs',
          ),
        ],
        currentIndex: c.selectedIndex.value,
        onTap: (index) {
          _onItemTapped(index);
        },
        selectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.0,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 12.0,
        ),
      ),
    );
  }
}

class search_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFFE8F0F5),
      ),
      height: 28.0,
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

