import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/models/post.dart';

class ListPosts extends StatefulWidget {
  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    Color bg = Color(0xff181818);
    Color fg = Color(0xff222222);
    final posts = Provider.of<List<PostModel>>(context) ?? [];
    ;
    return Expanded(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            color: bg,
            child: ListTile(
              title: Text(post.creator, style: TextStyle(color: Colors.white)),
              subtitle: Text(post.text, style: TextStyle(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}