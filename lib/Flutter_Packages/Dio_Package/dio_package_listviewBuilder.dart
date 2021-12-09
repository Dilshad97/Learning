import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactListWidget extends StatefulWidget {
  const ContactListWidget({Key key}) : super(key: key);

  @override
  _ContactListWidgetState createState() => _ContactListWidgetState();
}

class _ContactListWidgetState extends State<ContactListWidget> {
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();

    getDio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  // child: Image.network(e["avatar"]),
                                  child: Image.network(users[index]['avatar']),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(users[index]["name"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                      Text(users[index]["title"],maxLines: 1,overflow: TextOverflow.ellipsis,),
                                      Chip(label: Text(users[index]["role"]),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '\$  ${users[index]["balance"].toString() == "null" ? "0" : users[index]["balance"].toString()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },

            )

        ),
      );

  }

  void getDio() async {
    try {
      var response = await Dio(BaseOptions(headers: {"Content-Type":
      "application/json"}))
          .get('https://mock-database-f1298.web.app/api/v1/users');
      users = response.data["users"];
      setState(() {});
    } catch (e) {
      print(e);
    }
  }
}