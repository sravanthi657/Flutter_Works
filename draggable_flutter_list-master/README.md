# draggable_flutter_list

A flutter list view which can drag & move item to change order.

- some codes come from [flutter_list_drag_and_drop](https://github.com/Norbert515/flutter_list_drag_and_drop)
- fix flutter_list_drag_and_drop's dart version support
- optimize data structure and api
- drag and drop items in List View
- drag and drop are optional for specific item
- animate when dragging

### *Please use *draggable_flutter_list* for your dependency,
The old name dragable_flutter_list (lack g) has been deprecated

![](./demo.gif)

## Usage

[Pub package](https://pub.dartlang.org/packages/draggable_flutter_list)

```dart
import 'package:flutter/material.dart';
import 'package:draggable_flutter_list/draggable_flutter_list.dart';

void main() {
  runApp(new TestApp());
}

class TestApp extends StatelessWidget {
  TestApp({Key key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(
        title: 'Flutter Demo Home Page',
        key: key,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    '0',
    '1',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
    '3',
    '4',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new DragAndDropList(
        items.length,
        itemBuilder: (BuildContext context, index) {
          return new SizedBox(
            child: new Card(
              child: new ListTile(
                title: new Text(items[index]),
              ),
            ),
          );
        },
        onDragFinish: (before, after) {
          print('on drag finish $before $after');
          String data = items[before];
          items.removeAt(before);
          items.insert(after, data);
        },
        canDrag: (index) {
          print('can drag $index');
          return index != 3; //disable drag for index 3
        },
        canBeDraggedTo: (one, two) => true,
        dragElevation: 8.0,
      ),
    );
  }
}

```

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
