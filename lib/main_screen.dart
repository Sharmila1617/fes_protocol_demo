import 'package:fes_protocol_demo/nav_bar.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      UserAccountsDrawerHeader(
        accountName: const Text(
          'FES Protocol Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        accountEmail: const Text(
          'Version: 01.00.00.9995',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          child: ClipOval(
            child: Image.asset(
              'images/fes_logo.png',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ListTile(title: const Text('Home'), onTap: () {
      }),
      ListTile(title: const Text('Settings'), onTap: () {}),
      ListTile(title: const Text('Data Table'), onTap: () {}),
      ListTile(
          title: const Text('Info'),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContextcontext) {
                  return StatefulBuilder(
                      builder: (BuildContext context, states) {
                    return AlertDialog(
                      backgroundColor: Colors.orangeAccent,
                      titlePadding: const EdgeInsets.all(0),
                      contentPadding: const EdgeInsets.all(0),
                      scrollable: true,
                      clipBehavior: Clip.antiAlias,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'INFO',
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.cancel,
                                )),
                          ],
                        ),
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      content: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 2.2,
                        child: SingleChildScrollView(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/fes_logo.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Future Embdded Solution',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              const Text(
                                'FES Protocol Demo',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              Row(
                                children: const [
                                  Text(
                                      'FES Protocol Demo is design & developed by \n FutureEmbedded Solutions(OPC) Pvt.Ltd to\n'
                                      'demonstrate the usage of FES Protocol.'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              Row(
                                children: const [
                                  Text(
                                    'Support Communication',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '1. Serial (UART) \n'
                                    '2. Bluetooth \n'
                                    '3. TCP/IP.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              Row(
                                children: const [
                                  Text(
                                    'Support Platform',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Android \n '
                                    'Windows',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              Row(
                                children: const [
                                  Text(
                                    'Contact:\n '
                                    'http://www.futureembeddedsolution.in/ \n'
                                    'FuturEmbeddedSolutions@gmail.com',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 25.0, width: 250.0),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Version: 01.00.00.9995'),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: TextButton(
                                      child: Text(
                                        'Close',
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            backgroundColor: Colors.grey),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                      ),
                    );
                  });
                });
          }),
    ]));
  }
}
