import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/simpleCURDdemo/curdexamplethird_controller.dart';

class Curdexample3 extends StatefulWidget {
  const Curdexample3({super.key});

  @override
  State<Curdexample3> createState() => _Curdexample3State();
}

class _Curdexample3State extends State<Curdexample3> {
  @override
  void dispose() {
    TaskController.disposeTextField();
    super.dispose();
  }

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          children: [
            TextFormField(
              controller: TaskController.txtImageUrlController,
              decoration: const InputDecoration(label: Text('ImageUrl')),
              validator: (value) => value!.isEmpty ||
                      !RegExp(r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)')
                          .hasMatch(value)
                  ? 'user Firstname is not valid'
                  : null,
            ),
            TextFormField(
              controller: TaskController.txtFirstNameController,
              decoration: const InputDecoration(label: Text('FirstName')),
              validator: (value) =>
                  value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                      ? 'user Firstname is not valid'
                      : null,
            ),
            TextFormField(
              controller: TaskController.txtMiddleNameController,
              decoration: const InputDecoration(label: Text('MiddleName')),
              validator: (value) =>
                  value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                      ? 'user Firstname is not valid'
                      : null,
            ),
            TextFormField(
              controller: TaskController.txtLastNameController,
              decoration: const InputDecoration(label: Text('LastName')),
              validator: (value) =>
                  value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                      ? 'user Firstname is not valid'
                      : null,
            ),
            TextFormField(
              controller: TaskController.txtMobileNoController,
              decoration: const InputDecoration(label: Text('Mobile No.')),
              validator: (value) => value!.isEmpty ||
                      !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(value)
                  ? 'user Moblie Number is not valid'
                  : null,
            ),
            TextFormField(
              controller: TaskController.txtEmailIdController,
              decoration: const InputDecoration(label: Text('Email ID')),
              validator: (value) => value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)
                  ? 'user email is not valid'
                  : null,
            ),
            Row(
              children: [
                const Text('Gender:'),
                Radio(
                  value: TaskController.male,
                  groupValue: TaskController.grpvalu,
                  onChanged: (value) {
                    TaskController.grpvalu = value;
                    setState(() {});
                  },
                ),
                const Text('Male'),
                Radio(
                  value: TaskController.female,
                  groupValue: TaskController.grpvalu,
                  onChanged: (value) {
                    TaskController.grpvalu = value;
                    setState(() {});
                  },
                ),
                const Text('Female'),
              ],
            ),
            Row(
              children: [
                const Text('Hobby:'),
                Checkbox(
                  value: TaskController.iscricket,
                  onChanged: (value) {
                    TaskController.iscricket = value!;
                    setState(() {});
                  },
                ),
                const Text('Cricket'),
                Checkbox(
                  value: TaskController.isfootball,
                  onChanged: (value) {
                    TaskController.isfootball = value!;
                    setState(() {});
                  },
                ),
                const Text('Football'),
              ],
            ),
            Row(
              children: [
                const Text('Age:'),
                CupertinoSlider(
                  min: 0,
                  max: 100,
                  value: TaskController.agevalue,
                  onChanged: (value) {
                    TaskController.agevalue = value;
                    setState(() {});
                  },
                )
              ],
            ),
            Row(
              children: [
                const Text('Stream'),
                const SizedBox(
                  width: 5,
                ),
                DropdownButton(
                  value: TaskController.selectedstream,
                  hint: const Text('Stream'),
                  items: List.generate(
                      TaskController.streamdata.length,
                      (index) => DropdownMenuItem(
                          value: TaskController.streamdata[index],
                          child: Text(TaskController.streamdata[index]))),
                  onChanged: (value) {
                    TaskController.selectedstream = value.toString();
                    setState(() {});
                  },
                )
              ],
            ),
            Row(
              children: [
                const Text('isActive'),
                CupertinoSwitch(
                  value: TaskController.isActive,
                  onChanged: (value) {
                    TaskController.isActive = value;
                    setState(() {});
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: TaskController.isUpdate
                      ? () {
                          TaskController.updatedata();
                          setState(() {});
                        }
                      : () {
                          if (key.currentState!.validate()) {
                            TaskController.adddata();
                            setState(() {});
                          }
                        },
                  color: Colors.blueGrey,
                  child: Text(TaskController.isUpdate ? 'Update' : 'Submit'),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TaskController.data.isEmpty
                ? const Text('There is No Data')
                : Expanded(
                    child: Material(
                    child: ListView.builder(
                      itemCount: TaskController.data.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          TaskController.selectSingleValue(index);
                          setState(() {});
                        },
                        child: Dismissible(
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            TaskController.removedata(index);
                            setState(() {});
                          },
                          child: ListTile(
                            tileColor: TaskController.data[index].isActive!
                                ? Colors.green.shade700
                                : Colors.grey,
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  TaskController.data[index].imageurl!),
                            ),
                            title: Text(
                                'Name:${TaskController.data[index].fname} ${TaskController.data[index].mname}${TaskController.data[index].lname}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Mobile No:${TaskController.data[index].mobileno!}'),
                                Text(
                                    'Email Id:${TaskController.data[index].emailid!}'),
                                Row(
                                  children: [
                                    const Text('Hobbies:'),
                                    if (TaskController.data[index].iscricket ==
                                        true)
                                      const Text('Cricket'),
                                    if (TaskController
                                            .data[index].isfooltball ==
                                        true)
                                      const Text('Football'),
                                  ],
                                ),
                                Text(
                                    'Stream:${TaskController.data[index].selectedstream!}'),
                              ],
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                    'Gender:${TaskController.data[index].grpvalue!}'),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    'Age:${TaskController.data[index].agevalue!.round().toString()}'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
