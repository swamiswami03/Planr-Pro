import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerContent extends StatefulWidget {
  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  bool _showImage = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Planr Pro',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '- A Multi Use Task Planning App',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Switch(
                        value: _showImage,
                        onChanged: (value) {
                          setState(() {
                            _showImage = value;
                          });
                        },
                      ),),),
                  Container(
                    height: 100,
                    width: 200,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 15),
                    child: _showImage
                        ? Image.asset(
                      'assets/images/planrpro_icon.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    )
                        : Container(),
                  ),
                  SizedBox(
                    height: 230,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Developed by Kishan Rajeev and Swaminathan Jagadeesan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
