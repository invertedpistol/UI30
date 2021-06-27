import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height*0.45,
        width: size.width*0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('asset/220px-John_Wick_Chapter_3_Parabellum.png'),
            fit: BoxFit.fitHeight
            )
        ),
      ),
    );
  }
}

