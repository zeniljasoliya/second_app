import 'package:flutter/material.dart';

class SimpleCurdeexample extends StatefulWidget {
  const SimpleCurdeexample({super.key});

  @override
  State<SimpleCurdeexample> createState() => _SimpleCurdeexampleState();
}

class _SimpleCurdeexampleState extends State<SimpleCurdeexample> {
  TextEditingController txtUserNameController = TextEditingController();
  bool isupdate = false;
  int selectedindex = 0;
  List<String> userdata = [];
  @override
  void dispose() {
    txtUserNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: txtUserNameController,
            decoration: const InputDecoration(label: Text('UserName')),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: isupdate
                ? () {
                    userdata[selectedindex] = txtUserNameController.text;
                    txtUserNameController.clear();
                    isupdate = false;
                    setState(() {});
                  }
                : () {
                    userdata.add(txtUserNameController.text);
                    txtUserNameController.clear();
                    setState(() {});
                  },
            color: Colors.blueGrey,
            child: Text(isupdate ? 'Update' : 'Submit'),
          ),
          userdata.isEmpty
              ? const Text('There is no Data')
              : Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        userdata.removeAt(index);
                        setState(() {});
                      },
                      child: ListTile(
                        title: Text(userdata[index]),
                        onTap: () {
                          selectedindex = index;
                          isupdate = true;
                          txtUserNameController.text = userdata[index];
                          setState(() {});
                        },
                      ),
                    ),
                    itemCount: userdata.length,
                  ),
                )
        ],
      ),
    );
  }
}
