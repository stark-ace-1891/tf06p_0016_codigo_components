import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            placeholder: AssetImage(
              "assets/images/loading.gif",
            ),
            height: 300,
            fit: BoxFit.fitWidth,
            fadeInDuration: Duration(
              milliseconds: 1300,
            ),
          ),
        ],
      ),
    );
  }
}
