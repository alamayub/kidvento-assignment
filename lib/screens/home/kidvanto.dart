import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/home/events_screen.dart';
import 'package:kidvanto_assignment/screens/home/search_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class Kidvento extends StatefulWidget {
  const Kidvento({Key? key}) : super(key: key);

  @override
  State<Kidvento> createState() => _KidventoState();
}

class _KidventoState extends State<Kidvento> {
  int _index = 0;

  static const pageItems = [
    HomeScreen(),
    SearchScreen(),
    EventsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage('images/icon.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        titleSpacing: 16,
      ),
      body: pageItems[_index],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomAppBarItem(
              iconData: Icons.home,
              label: 'Home',
              active: _index == 0 ? true : false,
              onTap: () {
                setState(() => _index = 0);
              },
            ),
            CustomBottomAppBarItem(
              iconData: Icons.search,
              label: 'Find',
              active: _index == 1 ? true : false,
              onTap: () {
                setState(() => _index = 1);
              },
            ),
            CustomBottomAppBarItem(
              iconData: Icons.calendar_month,
              label: 'Events',
              active: _index == 2 ? true : false,
              onTap: () {
                setState(() => _index = 2);
              },
            ),
            CustomBottomAppBarItem(
              iconData: Icons.person,
              label: 'Profile',
              active: _index == 3 ? true : false,
              onTap: () {
                setState(() => _index = 3);
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomBottomAppBarItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool active;
  final Function() onTap;
  const CustomBottomAppBarItem({
    Key? key,
    required this.iconData,
    required this.label,
    required this.active,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: active ? 1 : .5,
      child: Stack(
        children: [
          active
              ? Positioned(
                  left: size.width * .025,
                  child: Container(
                    height: 4,
                    color: Theme.of(context).colorScheme.primary,
                    width: size.width * .15,
                  ),
                )
              : const SizedBox(),
          InkWell(
            onTap: onTap,
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * .2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      letterSpacing: .5,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
