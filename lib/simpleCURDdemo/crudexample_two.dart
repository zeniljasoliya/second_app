import 'package:flutter/material.dart';
import 'package:second_app/simpleCURDdemo/crudexampletwo_controller.dart';

class Curdexample2Demo extends StatefulWidget {
  const Curdexample2Demo({super.key});

  @override
  State<Curdexample2Demo> createState() => _Curdexample2DemoState();
}

class _Curdexample2DemoState extends State<Curdexample2Demo> {
  @override
  void dispose() {
    super.dispose();
    WhatsAppController.disposeTextField();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: WhatsAppController.txtImageUrlController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('ImageUrl'),
                    hintText: 'ImageUrl'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: WhatsAppController.txtUserNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('UserName'),
                    hintText: 'UserName'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: WhatsAppController.txtMessageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Message'),
                    hintText: 'Message'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: WhatsAppController.txtTimeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Time'),
                  hintText: 'Time',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: WhatsAppController.isUpdate
                  ? () {
                      WhatsAppController.updateWhataApp();
                      setState(() {});
                    }
                  : () {
                      WhatsAppController.addWhatsAppData();
                      setState(() {});
                    },
              color: Colors.blueGrey,
              child: Text(WhatsAppController.isUpdate ? 'Update' : 'Submit'),
            ),
            const SizedBox(
              height: 10,
            ),
            WhatsAppController.data.isEmpty
                ? const Text('There is No Data')
                : Expanded(
                    child: ListView.builder(
                    itemCount: WhatsAppController.data.length,
                    itemBuilder: (context, index) => Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          WhatsAppController.removedata(index);
                          setState(() {});
                        },
                        child: Ink(
                          color: Colors.lightGreen,
                          child: ListTile(
                            onTap: () {
                              WhatsAppController.selectSingleValue(index);
                              setState(() {});
                            },
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                WhatsAppController.data[index]['imageUrl'],
                              ),
                            ),
                            title: Text(
                                WhatsAppController.data[index]['contactName']),
                            subtitle:
                                Text(WhatsAppController.data[index]['message']),
                            trailing:
                                Text(WhatsAppController.data[index]['time']),
                          ),
                        )),
                  ))
          ],
        ),
      ),
    );
  }
}
