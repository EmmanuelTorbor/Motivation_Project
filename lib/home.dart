import 'package:flutter/material.dart';
import 'package:motivation_project/page/profilepage.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }

void main() {
  runApp(
    HomePage(),
  );
}

class HomePage extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    const title = 'Workout/Quotes';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Arms - Pushups, Diamond Pushups, PushPlank'),
            ),
            ListTile(
              title: Text('Abs - SitUps, Crunches, Plank'),
            ),
            ListTile(
              title: Text('Cardio - Running, JumpRope, Jumpingjacks'),
            ),
            ListTile(
              title: Text('Legs - AirSquats, Squats, SquatWeight'),
            ),
            ListTile(
              title: Text(
                  'You look good, you feel good, you feel good you play good, if you play good you get paid good-Deion sanders'),
            ),
            ListTile(
              title: Text(
                  'Try not to become a man of success, but rather become a man of value. – Albert Einstein.'),
            ),
            ListTile(
              title: Text(
                  'A winner is a dreamer who never gives up. – Nelson Mandela.'),
            ),
            ListTile(
              title: Text(
                  'You must be the change you wish to see in the world. — Gandhi.'),
            ),
            Container(
              width: 275,
              child: ElevatedButton(
                child: Text('For Teens'),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade200)),
              ),
            )
          ],
        ),

        // body: ListView.builder(
        //   // Let the ListView know how many items it needs to build.
        //   itemCount: items.length,
        //   // Provide a builder function. This is where the magic happens.
        //   // Convert each item into a widget based on the type of item it is.
        //   itemBuilder: (context, index) {
        //     final item = items[index];

        //     return ListTile(
        //       title: item.buildTitle(context),
        //       subtitle: item.buildSubtitle(context),
        //     );
        //   },
        // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              title: Text('Teens'),
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('home'),
              icon: Icon(
                Icons.house,
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Adults'),
              icon: Icon(Icons.supervised_user_circle, color: Colors.red),
            ),
          ],

          // onTap: (index) {
          //   setState(() {
          //     _currentIndex = index;
          //   });
          // },
        ),
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
// abstract class ListItem {
//   /// The title line to show in a list item.
//   Widget buildTitle(BuildContext context);

//   /// The subtitle line, if any, to show in a list item.
//   Widget buildSubtitle(BuildContext context);
// }

// /// A ListItem that contains data to display a heading.
// class HeadingItem implements ListItem {
//   final String heading;

//   HeadingItem(this.heading);

//   @override
//   Widget buildTitle(BuildContext context) {
//     return Text(
//       heading,
//       style: Theme.of(context).textTheme.headline5,
//     );
//   }

//   @override
//   Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
// }

// /// A ListItem that contains data to display a message.
// class MessageItem implements ListItem {
//   final String sender;
//   final String body;

//   MessageItem(this.sender, this.body);

//   @override
//   Widget buildTitle(BuildContext context) => Text(sender);

//   @override
//   Widget buildSubtitle(BuildContext context) => Text(body);
// }
