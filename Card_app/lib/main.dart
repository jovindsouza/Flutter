import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          body:SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/joo.jpg'),
                ),
                Text('Jovin Dsouza',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    color: Colors.teal[100],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  )
                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                    child: ListTile(
                      leading:Icon(Icons.phone,
                          color: Colors.teal
                      ),
                      title: Text(
                        '+91 - 123 456 789',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[900],
                            fontFamily: 'Source Sans Pro'),
                      ),
                    )),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                    child: ListTile(
                        leading:Icon(Icons.email,
                            color: Colors.teal
                        ),
                        title: Text(
                            'jovindsouza@gmail.com',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.teal[900],
                              fontFamily: 'Source Sans Pro'),
                            ),
                          )),
                        ],

                      )),
                    ),

            );

  }
}
