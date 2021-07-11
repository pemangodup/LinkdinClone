import 'package:flutter/material.dart';
import 'package:linkdin_clone/views/linkdin_clone.dart';
import 'package:get/get.dart';
import 'package:linkdin_clone/routes/route_management.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RouteManagement.getPages,
      home: LinkdinClone(),
    );
  }
}
