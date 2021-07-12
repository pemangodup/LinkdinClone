import 'package:flutter/material.dart';
import 'package:linkdin_clone/views/linkdin_clone.dart';
import 'package:get/get.dart';
import 'package:linkdin_clone/routes/route_management.dart';
import 'package:device_preview/device_preview.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      getPages: RouteManagement.getPages,
      home: LinkdinClone(),
    );
  }
}
