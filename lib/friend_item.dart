import 'package:flutter/material.dart';

import 'models/friends_model.dart';

class FriendItem extends StatelessWidget {

  FriendsModel friendModel;


  FriendItem(this.friendModel);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10,),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            friendModel.friendAvatar,
          ),
        ),
      ],
    );
  }
}
