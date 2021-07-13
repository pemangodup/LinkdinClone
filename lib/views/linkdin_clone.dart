import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkdin_clone/model/getx_controller.dart';
import 'package:linkdin_clone/views/main_home.dart';
import 'package:linkdin_clone/widgets/widgets.dart';


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
                'https://static.theprint.in/wp-content/uploads/2020/11/Jack-Ma.jpg'),
          ),
        ),
        title: Searchbar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.message, color: Colors.black,),
          ),
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



