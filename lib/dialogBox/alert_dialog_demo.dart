import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              child: const Text('Alert dialog'),
              onPressed: () async {
                await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alert Title'),
                      content: const Text('Sure you want to delete'),
                      actions: [
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('Yes'),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('Cancel'),
                        )
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () async {
                await showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text('Cupertino Title'),
                        content: const Text('Sure you want to delete'),
                        actions: [
                          MaterialButton(
                            onPressed: () {},
                            child: const Text('Yes'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text('Cancel'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('Show Cupertino alert dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return const SimpleDialog(
                      title: Text('Simple Dialog'),
                      children: [
                        Text('Zenil'),
                        Text('Ishvarbhai'),
                        Text('Jasoliya')
                      ],
                    );
                  },
                );
              },
              child: const Text(' Show Simple Dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationIcon: const Icon(Icons.search),
                    applicationVersion: 'zenil');
              },
              child: const Text('Show About Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
