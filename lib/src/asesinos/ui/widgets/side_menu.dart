import 'package:certamen_uno_dam/provider/user_provider.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/asesino_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
        child: Container(
          height: size.height * 0.8,
          child: Drawer(
            child: ListView(
              children: [
                Container(
                  height: (size.height) * 0.4,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text("Menu de usuario",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                          ),
                          Spacer(),
                          Container(
                              width: size.width * 0.75,
                              child: Text(
                                'email',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              )),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 100.0,
                              backgroundImage: AssetImage('assets/logo.png'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                width: 170,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.settings),
                                      Spacer(),
                                      Text(
                                        'Editar Perfil',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      )),
                ),
                ListTile(
                  onTap: () {
                    context.go('/profile');
                  },
                  title: Text("Mi perfil"),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  onTap: () {
                    context.go('/contratos');
                  },
                  title: Text("Contratos"),
                  leading: Icon(Icons.book),
                ),
                ListTile(
                  onTap: () {
                    context.go('/servicios');
                  },
                  title: Text("Servicios"),
                  leading: Icon(Icons.light),
                ),
                ListTile(
                  onTap: () {
                    context.go('/hoteles');
                  },
                  title: Text("Hoteles"),
                  leading: Icon(Icons.bar_chart_rounded),
                ),
                ListTile(
                  onTap: () {
                    context.go('/asesinos');
                  },
                  title: Text("Otros asesinos"),
                  leading: Icon(Icons.gesture),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      context.read<UserProvider>().changeLogin(newState: false);
                      context.go('/login');
                    });
                  },
                  title: Text("Cerrar Sesion"),
                  leading: Icon(Icons.logout),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
