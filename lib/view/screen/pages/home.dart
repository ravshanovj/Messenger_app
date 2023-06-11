import 'package:flutter/material.dart';
import 'package:new_my_app/service/service.dart';
import 'package:new_my_app/view/screen/search_part.dart';

class HomeIcon extends StatefulWidget {
  const HomeIcon({super.key});

  @override
  State<HomeIcon> createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Search contact",
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder(
                future: UserService.getNewService(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(UserService.userBox!
                                .get(index)!
                                .name
                                .toString()),
                          ),
                        );
                      },
                      itemCount: UserService.userBox!.length,
                    );
                  }
                }),
          ),
        ),
      );
}
