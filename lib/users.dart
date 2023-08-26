import 'package:flutter/material.dart';

class UserModel {
  String name;
  String phone;


  UserModel({
    required this.name,
    required this.phone,
  });

}

class userScreen extends StatelessWidget {
  int id=1;
  List<UserModel> Users =[
    UserModel(
      name: 'Omar Muhammad',
      phone: '+201210165298',
    ),
    UserModel(
      name: 'Aamry Muhammad',
      phone: '+201210165298',
    ),
    UserModel(
      name: 'OmarMuhammad',
      phone: '+201210165298',
    ),
    UserModel(
      name: 'Aamry Muhammad',
      phone: '+201210165298',
    ),
    UserModel(
      name: 'Omar Muhammad',
      phone: '+201210165298',
    ),
    UserModel(
      name: 'Aamry',
      phone: '+201210165298',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Users',),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => BuildUserItem(Users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20,),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.black26,
            ),
          ),
          itemCount: Users.length),

    );
  }
  Widget BuildUserItem(UserModel Users) => Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black26,
            ),
            Text(
              '${id++}',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:  [
            Text(
              Users.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 3,),
            Text(
              Users.phone,
              style: const TextStyle(
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}



