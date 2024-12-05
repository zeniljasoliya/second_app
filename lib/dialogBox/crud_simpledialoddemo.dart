import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'crud_simpledialog_controller.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  void dispose() {
    TaskController.disposeTextField();
    super.dispose();
  }

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final GlobalKey<FormState> updateKey = GlobalKey<FormState>();

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
                  onPressed: () {
                    TaskController.adddata();
                    TaskController.clearData();
                    setState(() {});
                  },
                  color: Colors.blueGrey,
                  // onPressed: TaskController.isUpdate
                  //     ? () {
                  //         TaskController.updatedata();
                  //         setState(() {});
                  //       }
                  //     : () {
                  //         if (key.currentState!.validate()) {
                  //           TaskController.adddata();
                  //           setState(() {});
                  //         }
                  //       },
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
                        onTap: () async {
                          TaskController.selectSingleValue(index);
                          TaskController.onTapData();
                          await showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return ListView.builder(
                                itemCount: TaskController.data.length,
                                itemBuilder: (context, index) {
                                  return SimpleDialog(
                                    children: [
                                      Form(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtImageUrlController,
                                              decoration: const InputDecoration(
                                                  label: Text('ImageUrl')),
                                              validator: (value) => value!
                                                          .isEmpty ||
                                                      !RegExp(r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)')
                                                          .hasMatch(value)
                                                  ? 'user Firstname is not valid'
                                                  : null,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtFirstNameController,
                                              decoration: const InputDecoration(
                                                  label: Text('FirstName')),
                                              validator: (value) => value!
                                                          .isEmpty ||
                                                      !RegExp(r'^[a-z A-Z]+$')
                                                          .hasMatch(value)
                                                  ? 'user Firstname is not valid'
                                                  : null,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtMiddleNameController,
                                              decoration: const InputDecoration(
                                                  label: Text('MiddleName')),
                                              validator: (value) => value!
                                                          .isEmpty ||
                                                      !RegExp(r'^[a-z A-Z]+$')
                                                          .hasMatch(value)
                                                  ? 'user Firstname is not valid'
                                                  : null,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtLastNameController,
                                              decoration: const InputDecoration(
                                                  label: Text('LastName')),
                                              validator: (value) => value!
                                                          .isEmpty ||
                                                      !RegExp(r'^[a-z A-Z]+$')
                                                          .hasMatch(value)
                                                  ? 'user Firstname is not valid'
                                                  : null,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtMobileNoController,
                                              decoration: const InputDecoration(
                                                  label: Text('Mobile No.')),
                                              validator: (value) => value!
                                                          .isEmpty ||
                                                      !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
                                                          .hasMatch(value)
                                                  ? 'user Moblie Number is not valid'
                                                  : null,
                                            ),
                                            TextFormField(
                                              controller: TaskController
                                                  .txtEmailIdController,
                                              decoration: const InputDecoration(
                                                  label: Text('Email ID')),
                                              validator: (value) => value!
                                                          .isEmpty ||
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
                                                  groupValue:
                                                      TaskController.grpvalu,
                                                  onChanged: (value) {
                                                    TaskController.grpvalu =
                                                        value;
                                                    setState(() {});
                                                  },
                                                ),
                                                const Text('Male'),
                                                Radio(
                                                  value: TaskController.female,
                                                  groupValue:
                                                      TaskController.grpvalu,
                                                  onChanged: (value) {
                                                    TaskController.grpvalu =
                                                        value;
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
                                                  value:
                                                      TaskController.iscricket,
                                                  onChanged: (value) {
                                                    TaskController.iscricket =
                                                        value!;
                                                    setState(() {});
                                                  },
                                                ),
                                                const Text('Cricket'),
                                                Checkbox(
                                                  value:
                                                      TaskController.isfootball,
                                                  onChanged: (value) {
                                                    TaskController.isfootball =
                                                        value!;
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
                                                  value:
                                                      TaskController.agevalue,
                                                  onChanged: (value) {
                                                    TaskController.agevalue =
                                                        value;
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
                                                  value: TaskController
                                                      .selectedstream,
                                                  hint: const Text('Stream'),
                                                  items: List.generate(
                                                      TaskController
                                                          .streamdata.length,
                                                      (index) => DropdownMenuItem(
                                                          value: TaskController
                                                                  .streamdata[
                                                              index],
                                                          child: Text(
                                                              TaskController
                                                                      .streamdata[
                                                                  index]))),
                                                  onChanged: (value) {
                                                    TaskController
                                                            .selectedstream =
                                                        value.toString();
                                                    setState(() {});
                                                  },
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text('isActive'),
                                                CupertinoSwitch(
                                                  value:
                                                      TaskController.isActive,
                                                  onChanged: (value) {
                                                    TaskController.isActive =
                                                        value;
                                                    setState(() {});
                                                  },
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            MaterialButton(
                                              onPressed: () {
                                                if (key.currentState!
                                                    .validate()) {
                                                  TaskController.updatedata();
                                                  TaskController.clearData();
                                                  Navigator.pop(context);
                                                  setState(() {});
                                                }
                                              },
                                              color: Colors.blueAccent,
                                              child: const Text('Update'),
                                            ),
                                            MaterialButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: const Text('Cancel'),
                                            ),
                                          ],
                                        ),
                                      ))
                                    ],
                                  );
                                },
                              );
                            },
                          );
                          setState(() {});
                        },
                        child: Dismissible(
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            // TaskController.removedata(index);
                            // setState(() {});
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Are You Sure?'),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        TaskController.data.removeAt(index);
                                        Navigator.pop(context);
                                        setState(() {});
                                      },
                                      child: const Text('Delete'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {});
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                  ],
                                );
                              },
                            );
                            setState(() {});
                          },
                          child: Column(children: [
                            Container(
                              width: double.infinity,
                              height: 170,
                              decoration: const BoxDecoration(
                                  color: Colors.lightBlueAccent),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                TaskController
                                                    .data[index].imageurl!),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                              'Name:${TaskController.data[index].fname} ${TaskController.data[index].mname}${TaskController.data[index].lname}'),
                                          Text(
                                              'Mobile No:${TaskController.data[index].mobileno!}'),
                                          Text(
                                              'Email Id:${TaskController.data[index].emailid!}'),
                                          Text(
                                              'Gender:${TaskController.data[index].grpvalue!}'),
                                          Text(
                                              'Age:${TaskController.data[index].agevalue!.round().toString()}'),
                                          Row(
                                            children: [
                                              const Text('Hobbies:'),
                                              if (TaskController
                                                      .data[index].iscricket ==
                                                  true)
                                                const Text('Cricket'),
                                              if (TaskController.data[index]
                                                      .isfooltball ==
                                                  true)
                                                const Text('Football'),
                                            ],
                                          ),
                                          Text(
                                              'Stream:${TaskController.data[index].selectedstream!}'),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                          // child: ListTile(
                          //   tileColor: TaskController.data[index].isActive!
                          //       ? Colors.green.shade700
                          //       : Colors.grey,
                          //   leading: CircleAvatar(
                          //     backgroundImage: NetworkImage(
                          //         TaskController.data[index].imageurl!),
                          //   ),
                          //   title: Text(
                          //       'Name:${TaskController.data[index].fname} ${TaskController.data[index].mname}${TaskController.data[index].lname}'),
                          //   subtitle: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //           'Mobile No:${TaskController.data[index].mobileno!}'),
                          //       Text(
                          //           'Email Id:${TaskController.data[index].emailid!}'),
                          //       Row(
                          //         children: [
                          //           const Text('Hobbies:'),
                          //           if (TaskController.data[index].iscricket ==
                          //               true)
                          //             const Text('Cricket'),
                          //           if (TaskController
                          //                   .data[index].isfooltball ==
                          //               true)
                          //             const Text('Football'),
                          //         ],
                          //       ),
                          //       Text(
                          //           'Stream:${TaskController.data[index].selectedstream!}'),
                          //     ],
                          //   ),
                          //   trailing: Column(
                          //     children: [
                          //       Text(
                          //           'Gender:${TaskController.data[index].grpvalue!}'),
                          //       const SizedBox(
                          //         height: 15,
                          //       ),
                          //       Text(
                          //           'Age:${TaskController.data[index].agevalue!.round().toString()}'),
                          //     ],
                          //   ),
                          // ),
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
