import 'package:flutter/material.dart';
import 'package:rp_cast/screens/podcast_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPCast',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
              ),
              onPressed: null
          ),
          title: Text(
              'RPCast',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: PodCastList(),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 75.0,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Podcast Name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '10:05 / 33:00',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Title of Episode',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Play/Pause Podcast',
              backgroundColor: Colors.white,
              child: Icon(
                Icons.fast_rewind,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10.0),
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Play/Pause Podcast',
              backgroundColor: Colors.white,
              child: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10.0),
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Play/Pause Podcast',
              backgroundColor: Colors.white,
              child: Icon(
                Icons.fast_forward,
                color: Colors.black,
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
