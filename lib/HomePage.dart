import 'package:flutter/material.dart';

import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtgrid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView.builder(
              itemCount: Global.all.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      child: Text(
                        "${Global.all[index].Grid}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "${Global.all[index].Name}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "${Global.all[index].Std}",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 25,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context, builder: (BuildContext) =>
                                AlertDialog(
                                  actions: [
                                    TextField(),
                                  ],
                                ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            size: 25,
                          ),
                          onPressed: () {
                          },
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'add');
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }