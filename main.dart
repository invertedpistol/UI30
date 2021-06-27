import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'MovieItem.dart';
import 'SearchBar.dart';
import 'nowPlaying.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: 
        Column(children: [
          SearchBar(),
          NowPlaying(),
          Container(
            margin: EdgeInsets.all(10),
            height: size.height*0.45,
            child: Slist()
          )
        ], crossAxisAlignment: CrossAxisAlignment.start,
        )
      )
    );
  }
}

class Slist extends StatefulWidget {
  const Slist({ Key? key }) : super(key: key);

  @override
  _SlistState createState() => _SlistState();
}

class _SlistState extends State<Slist> {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
            margin: EdgeInsets.all(10),
            height: size.height*0.45,
            child: Swiper(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index){
                return MovieItem();
              },
              //pagination: SwiperPagination(),
              viewportFraction: 0.5,
              scale: 0.9,
              fade: 0.1,
              //control: SwiperControl(),

            )
    );
  }
}
