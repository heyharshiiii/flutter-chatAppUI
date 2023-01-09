import 'package:chat_app/models/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:chat_app/widgets/favourite_contacts.dart';

class Message{
  final User sender;
  final String time;
 final String text;
 final bool isLiked;
 final bool unread;

Message({
  required this.sender,
 required this.time,
  required this.text,
 required this.isLiked,
  required this.unread
});

}

//YOU - current user
final User currentUser =User(
  id: 0,
  name: 'currentUser',
  imageUrl: 'assets/images/me.jpg'
);
//USERS
final User Disha=User(
  id: 1,
  name: 'Disha',
  imageUrl: 'assets/images/disha.jpg'
);
final User Rashmi =User(
  id: 2,
  name: 'Rashmi',
  imageUrl: 'assets/images/rashmi.jpg'
);
final User Nikita=User(
  id: 3,
  name: 'Nikita',
  imageUrl: 'assets/images/nikita.jpg'
);
final User Isha=User(
  id: 4,
  name: 'Isha',
  imageUrl: 'assets/images/isha.jpg'
);
final User Ishani=User(
  id: 5,
  name: 'Ishani',
  imageUrl: 'assets/images/ishani.jpg'
);
final User Firdaus=User(
  id: 6,
  name: 'Firdaus',
  imageUrl: 'assets/images/firdaus.jpg'
);
final User Meenal=User(
  id: 5,
  name: 'Meenal',
  imageUrl: 'assets/images/meenal.jpg'
);



//FAVOURITE CONATCTS

List<User> favourites=[Ishani,Nikita,Disha,Rashmi,Isha,Firdaus];

//Example Chats on home screen
List <Message> chats=[
Message(sender: currentUser,
 time: '5:30 PM',
text: 'Cool!',
isLiked: true,
unread: false,
  ),
Message(sender: Isha,
 time: '5:31 PM',
text: 'Cool!',
isLiked: false,
unread: false,
  ),
  Message(sender: Disha,
 time: '5:33 PM',
text: 'Cool!',
isLiked: true,
unread: true,
  ),
Message(sender: Rashmi,
 time: '5:35 PM',
text: 'Cool!',
isLiked: false,
unread: true,
  ),
Message(sender: Nikita,
 time: '5:36 PM',
text: 'Cool!',
isLiked: true,
unread: false,
  ),
  Message(sender: Ishani,
 time: '5:36 PM',
text: 'Cool!',
isLiked: true,
unread: false,
  ),
  Message(sender: Firdaus,
 time: '5:36 PM',
text: 'Cool!',
isLiked: true,
unread: false,
  ),
  Message(sender: Meenal,
 time: '5:36 PM',
text: 'Cool!',
isLiked: true,
unread: false,
  ),

];
// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: Nikita,
    time: '5:30 PM',
    text: 'Cool!',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Sevenish?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:45 PM',
    text: 'Fine then!! Let\'s go. I will pick you up.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Nikita,
    time: '3:15 PM',
    text: 'Domino\'s please !! I am craving for pizza today',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Sure! Where?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Nikita,
    time: '2:00 PM',
    text: 'Let\'s hangout someday.',
    isLiked: false,
    unread: true,
  ),
];