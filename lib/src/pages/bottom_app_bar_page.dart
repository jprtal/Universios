import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:/src/api/user_info_provider.dart';
import 'package:/src/bloc/bottom_navigation_bar.dart';
import 'package:/src/bloc/rest_info.dart';
import 'package:/src/pages/home_page.dart';
import 'package:/src/pages/news_page.dart';
import 'package:/src/pages/school_page.dart';
import 'package:/src/pages/tui_page.dart';
import 'package:/src/utils/palette.dart';
import 'package:/src/utils/user_preferences.dart';

class BottomBarHomePage extends StatefulWidget {

  @override
  _BottomBarHomePageState createState() => _BottomBarHomePageState();
}

class _BottomBarHomePageState extends State<BottomBarHomePage> {

  @override
  void initState() { 
    super.initState();
    
    UserInfoProvider().post(UserPreferences().accessToken).then((data) {
      if (data == null) {
        Navigator.pushReplacementNamed(context, 'login');
      } else {
        Provider.of<RestInfo>(context, listen: false).userInfo = data;
      }
    }).catchError((error) => print(error));
  }

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<BottomNavigation>(context);

    return Scaffold(
      body: _callPage(provider.currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.deepRed,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.web_asset),
            title: new Text('Noticias'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.bookmark),
            title: new Text('Académico'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Perfil'),
          ),
        ],
      ),
    );
  }

  Widget _callPage(int page) {
    switch (page) {
      case 0: return HomePage();
      case 1: return NewsPage();
      case 2: return SchoolPage();
      case 3: return TuiPage();
      default: return HomePage();
    }
  }
  
}