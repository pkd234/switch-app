import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List items = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        dragSourceWidget,
        Expanded(
            child: ListView.builder(
                itemCount: items.length + 1,
                itemBuilder: ((context, index) =>
                    index == 0 ? dragTargetWidget : (Text(items[index - 1])))))
      ]),
    );
  }

  Widget get dragSource => const Center(
        child: Text(
          'Please drag me',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
          ),
        ),
      );

  Widget get dragTarget => const Center(
        child: Text(
          'Please drop me here',
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget defaultData(String text) => Text(text);

  Widget get dragSourceWidget => LongPressDraggable<String>(
        data: "This is a good item",
        dragAnchorStrategy: pointerDragAnchorStrategy,
        feedback: Opacity(
          opacity: 0.5,
          child: Container(
            color: Colors.grey[200],
            child: dragSource,
          ),
        ),
        child: dragSource,
      );

  Widget get dragTargetWidget => DragTarget<String>(
        builder: (context, candidateItems, rejectedItems) {
          if (candidateItems.isNotEmpty &&
              candidateItems[0] != null &&
              candidateItems[0]!.contains('good')) {
            return Container(
                color: Colors.blue,
                height: 100,
                child: Center(child: defaultData('Drop Here')));
          }
          return defaultData('Add item to list');
        },
        onAccept: (item) {
          setState(() {
            items.add(item + DateTime.now().toString());
          });
          defaultData(item);
        },
      );
}
