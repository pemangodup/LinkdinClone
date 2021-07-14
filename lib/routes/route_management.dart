import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:linkdin_clone/views/search_page.dart';


class RouteManagement{
  static List<GetPage<dynamic>> getPages= [
    GetPage(name: '/searchPage', page: () => SearchBar()),
  ];
}