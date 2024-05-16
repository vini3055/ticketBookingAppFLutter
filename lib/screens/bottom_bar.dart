import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _variableSelectedIndex = 0;
static final List<Widget>_widgetOptions = <Widget>[
const Text("Home"),
const Text("Search"),
const Text("Tickets"),
const Text("Profile"),

];
void _onItemTapped(int index){
  // setState is to get updated realtime
  setState(() {
    _variableSelectedIndex = index;
  });
print('${index}');
}

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My ticketApp'),
      ),
      body: Center(
          child:_widgetOptions[_variableSelectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:_onItemTapped ,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), activeIcon:Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_filled), activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_filled), activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled), label: "User"),
        ],
      ),
    );
  }
}
