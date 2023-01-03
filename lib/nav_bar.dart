import 'package:fes_protocol_demo/main_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FES Protocol Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text('FES Protocol Demo',
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            AppBar(
              title: Text("FES Protocol Demo"),
              leading: GestureDetector(
                onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
            },
                child: Icon(
                  Icons.menu,  // add custom icons also
                ),
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                          Icons.more_vert
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}