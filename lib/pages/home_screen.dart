import 'package:a_star/pages/navigationBody/dashboard_body.dart';
import 'package:a_star/pages/navigationBody/home_body.dart';
import 'package:a_star/pages/navigationBody/profile_body.dart';
import 'package:a_star/pages/navigationBody/scan_body.dart';
import 'package:a_star/pages/navigationBody/settings_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> bodyProperty = [
    const HomeBody(),
    const DashboardBody(),
    const ScanBody(),
    const ProfileBody(),
    const SettingsBody()
  ];

  void onItemSelected(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: const [
                Image(image: AssetImage('assets/image/a.png',), fit: BoxFit.contain, height: 30,),
                SizedBox(width: 10,),
                Text('A STAR'),
              ],
            ),
            backgroundColor: Colors.green[600],
          ),
          body: bodyProperty[_selectedIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: ()=>onItemSelected(2),
            backgroundColor: _selectedIndex==2? Colors.green[400] : Colors.white,
            child: Icon(Icons.qr_code_scanner, color: _selectedIndex==2? Colors.white: Colors.grey[850],),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 4,
            child: Container(
              height: 55,
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(Icons.home, color: _selectedIndex==0 ? Colors.green[400] : Colors.grey[850],),
                          onPressed: ()=>onItemSelected(0),
                        ),
                        Text('Home', style: TextStyle(color: _selectedIndex==0 ? Colors.green[400] : Colors.grey[850]),)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(Icons.dashboard, color: _selectedIndex==1 ? Colors.green[400] : Colors.grey[850],),
                          onPressed: ()=>onItemSelected(1),
                        ),
                        Text('Dashboard', style: TextStyle(color: _selectedIndex==1 ? Colors.green[400] : Colors.grey[850]),)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Scan', style: TextStyle(color: _selectedIndex==2? Colors.green[400] : Colors.grey[850]),)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(Icons.person, color: _selectedIndex==3 ? Colors.green[400] : Colors.grey[850],),
                          onPressed: ()=>onItemSelected(3),
                        ),
                        Text('Profile', style: TextStyle(color: _selectedIndex==3 ? Colors.green[400] : Colors.grey[850]),)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(Icons.settings, color: _selectedIndex==4 ? Colors.green[400] : Colors.grey[850],),
                          onPressed: ()=>onItemSelected(4),
                        ),
                        Text('Settings', style: TextStyle(color: _selectedIndex==4 ? Colors.green[400] : Colors.grey[850]),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
