import 'package:flutter/material.dart';
import 'package:sportify/models/data/user.dart';

class ListUser extends StatelessWidget {
  const ListUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: APIServices.fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==  ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.network(snapshot.data![index].avatar!),
                      Text(snapshot.data![index].firstName!),
                      Text(snapshot.data![index].lastName!),
                      Text(snapshot.data![index].email!),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}