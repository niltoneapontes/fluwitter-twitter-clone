import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class NewTweet extends StatefulWidget {
  const NewTweet({Key? key}) : super(key: key);

  @override
  State<NewTweet> createState() => _NewTweetState();
}

class _NewTweetState extends State<NewTweet> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _tweetText = '';
    double _proportion = 0;

    return Dialog(
      backgroundColor: const Color(0xFF15202B),
      insetPadding: const EdgeInsets.all(0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  onPressed: () {},
                  child: const Text('Tweetar'),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 18,
                  backgroundColor: Colors.blue,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLength: 140,
                      maxLines: null,
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'O que está acontecendo?',
                        helperStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                        border: InputBorder.none,
                      ),
                      textAlignVertical: TextAlignVertical.top,
                      textAlign: TextAlign.left,
                      onChanged: (value) {
                        _tweetText = value;
                        _proportion = value.length / 140;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: Colors.white,
                width: 0.5,
              ))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.record_voice_over_rounded,
                          color: Colors.purple)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_outlined,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.gif_box_outlined,
                          color: Colors.blue, size: 20)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.format_list_bulleted_rounded,
                          color: Colors.blue)),
                  IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.location_on_outlined, color: Colors.blue)),
                  Spacer(),
                  new CircularPercentIndicator(
                    animateFromLastPercent: true,
                    radius: 24,
                    lineWidth: 4,
                    percent: _proportion,
                    progressColor: Colors.blue,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
