import 'package:flutter/material.dart';

import 'package:second_app/dialogBox/textfeildcontroller.dart';

class FormExampleDemo extends StatefulWidget {
  const FormExampleDemo({super.key});

  @override
  State<FormExampleDemo> createState() => _FormExampleDemoState();
}

class _FormExampleDemoState extends State<FormExampleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: WhatsAppController.txtImageUrlController,
            decoration: const InputDecoration(label: Text('ImageUrl')),
          ),
          TextField(
            controller: WhatsAppController.txtUserNameController,
            decoration: const InputDecoration(label: Text('UserName')),
          ),
          TextField(
            controller: WhatsAppController.txtMessageController,
            decoration: const InputDecoration(label: Text('Message')),
          ),
          TextField(
            controller: WhatsAppController.txtTimeController,
            decoration: const InputDecoration(label: Text('Time')),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: WhatsAppController.isUpdate
                ? () async {
                    await showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Simple Dialog'),
                          children: [
                            WhatsAppController.data.isEmpty
                                ? const Text('There is No Data')
                                : Expanded(
                                    child: ListView.builder(
                                    itemCount: WhatsAppController.data.length,
                                    itemBuilder: (context, index) =>
                                        Dismissible(
                                            key: UniqueKey(),
                                            onDismissed: (direction) {
                                              WhatsAppController.removedata(
                                                  index);
                                              setState(() {});
                                            },
                                            child: ListTile(
                                              onTap: () {
                                                WhatsAppController
                                                    .selectSingleValue(index);
                                                setState(() {});
                                              },
                                              leading: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    WhatsAppController
                                                            .data[index]
                                                        ['imageUrl']),
                                              ),
                                              title: Text(WhatsAppController
                                                  .data[index]['contactName']),
                                              subtitle: Text(WhatsAppController
                                                  .data[index]['message']),
                                              trailing: Text(WhatsAppController
                                                  .data[index]['time']),
                                            )),
                                  ))
                          ],
                        );
                      },
                    );
                    // WhatsAppController.updateWhataApp();
                    // setState(() {});
                  }
                : () {
                    WhatsAppController.addWhatsAppData();
                    setState(() {});
                  },
            color: Colors.blueGrey,
            child: Text('submit'),
            // child: Text(WhatsAppController.isUpdate ? 'Update' : 'Submit'),
          ),
        ],
      ),
    );
  }
}
