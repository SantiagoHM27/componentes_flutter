import 'package:flutter/material.dart';
import 'package:praactica3/screens/home_screen.dart';
import 'package:praactica3/screens/images_screen.dart';
import 'package:praactica3/screens/infinite_list.dart';
import 'package:praactica3/theme/app_theme.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.primaryColor,
            icon: Icon(
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
