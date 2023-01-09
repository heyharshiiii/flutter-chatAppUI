import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:chat_app/models/message_model.dart';

import '../screens/chat_screen.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: 10.0,
        ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Favourite Contacts',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0
                                  ),),
                                IconButton(
                                  icon: Icon(Icons.more_horiz),
                                  iconSize: 30.0,
                                  color: Colors.blueGrey,
                                  onPressed: () {},
                                  ),
                                  
                              ],
                            ),
          ),
          Container(
            height: 130.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favourites.length,
              itemBuilder: (BuildContext context , int index)
              {
                
                return GestureDetector(
                  onTap: () => Navigator.push(
                                    context,
                                     MaterialPageRoute(
                                      builder:(_) => ChatScreen(
                                        user: favourites[index],
                                        )
                                      )
                                      ),
                  child: Padding(
                    padding:EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: AssetImage(favourites[index].imageUrl),
                            ),
                            SizedBox(height:6.0),
                            Text(
                              favourites[index].name,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
          )
          )
        ],
      ),
    );
  }
}