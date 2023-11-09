import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';
import 'package:school_management_system/presentation/teacher/chat_with_parents/widgets/user_tile.dart';

class ChatWithParentsScreen extends StatelessWidget {
  const ChatWithParentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat With Parents"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
              return  UserTile(userChat: chatsList[index ]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: chatsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
