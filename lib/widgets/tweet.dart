import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  const Tweet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(56, 68, 77, 1),
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Fulano',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          '@soufulano · 1min',
                          style: TextStyle(color: Colors.grey),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu lacinia sapien. Sed sit amet est nec magna facilisis malesuada ut in dui.',
                    style: TextStyle(color: Colors.white),
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
