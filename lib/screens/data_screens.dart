import 'package:flutter/material.dart';
import 'package:praactica3/models/data.dart';
import 'package:praactica3/screens/home_screen.dart';
import 'package:praactica3/screens/images_screen.dart';
import 'package:praactica3/screens/infinite_list.dart';
import 'package:praactica3/screens/notifications.dart';
import 'package:praactica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState () => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
      ),
      body: ListView(
        children: <Widget>[
          const Divider(),
          ListTile(
            title: Text('Tu nombre es:',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
          ),
          ListTile(
            title: Text('Te gusta flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
          ),
          ListTile(
            title: Text('Que tanto te gusta flutter:',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
          ),
          ListTile(
            title: Text('La comida que prefieres es:',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
          ),
          ListTile(
            title: Text('El postre que prefieres es:',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
          )
        ],

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