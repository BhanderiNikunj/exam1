import 'package:exam/ModalData.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController txtgrid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  String? grid;
  String? name;
  String? std;

  List Grid = [];
  List Name = [];
  List Std = [];

  GlobalKey<FormState> Key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: Key,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: txtgrid,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: txtname,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: txtstd,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Grid.add(txtgrid.text);
                      Name.add(txtname.text);
                      Std.add(txtstd.text);
                    });
                    if (Key.currentState!.validate()) {
                      Key.currentState!.save();
                      Modal m1 = Modal(
                        Grid: Grid,
                        Name: Name,
                        Std: Std,
                      );
                      setState(() {
                        Global.all.add(m1);
                      });
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}