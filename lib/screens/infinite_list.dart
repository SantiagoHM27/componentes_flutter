import 'package:flutter/material.dart';
import 'package:praactica3/screens/home_screen.dart';
import 'package:praactica3/screens/images_screen.dart';
import 'package:praactica3/screens/notifications.dart';
import 'package:praactica3/theme/app_theme.dart';

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista infinita',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
      ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.primaryColor,
            icon:Icon(
              Icons.home,
              color: AppTheme.backColor,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imágenes',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.next_plan),
            label: 'Datos',
          ),
        ],
      ),
    );
  }
  openScreen(BuildContext context, int index){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context)=> const HomeScreen());
    switch(index){
      case 0: ruta = MaterialPageRoute(builder: (context)=> const HomeScreen());
      break;

      case 1: ruta = MaterialPageRoute(builder: (context)=> const InfiniteList());
      break;

      case 2: ruta = MaterialPageRoute(builder: (context)=> const Notifications());
    break;

    case 3: ruta = MaterialPageRoute(builder: (context)=> const ImagesScreen());
    break;
    }
    setState((){
      selectedIndex = index;
      Navigator.push(context, ruta);
    },
    );
  }
}