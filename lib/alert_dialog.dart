import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FES DATA FRAM"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
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
                                const Text(
                                  'FES Protocol Demo',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [Text('versionn'), Text('close')],
                                )
                              ],
                            ),
                          )),
                        ),
                      );
                    });
                  });
            },
            child: Text('Button'),
          ),
        ));
  }
}
