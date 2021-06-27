import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Text('Now Playing',style:TextStyle(color: Colors.black, fontSize: 23,fontWeight: FontWeight.bold),),
    );
  }
}

