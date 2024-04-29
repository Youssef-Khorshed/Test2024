import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/Data%20Source/remote.dart';
import 'package:flutter_application_1/User/Model/usermodel.dart';

class PostUserData extends StatefulWidget {
  const PostUserData({super.key});

  @override
  State<PostUserData> createState() => _PostUserDataState();
}

class _PostUserDataState extends State<PostUserData> {
  final name = TextEditingController();
  final age = TextEditingController();
  final nationalityID = TextEditingController();
  final birthDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(hintText: 'User Name'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: age,
              decoration: InputDecoration(hintText: 'age'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: nationalityID,
              decoration: InputDecoration(hintText: ' nationalityID'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: birthDate,
              decoration: InputDecoration(hintText: 'birthDate'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  UserRemoteImp().post_user(
                      user: User(
                          age: age.text,
                          birthDate: birthDate.text,
                          datetime: 1 - 1 - 2020,
                          decimal: '',
                          name: name.text,
                          nationalityID: nationalityID.text,
                          personID: 1));
                },
                child: Text('Post User'))
          ],
        ),
      ),
    );
  }
}
