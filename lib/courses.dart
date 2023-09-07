


// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import 'colorsceem.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class courseSec extends StatefulWidget {
  const courseSec({super.key});

  @override
  State<courseSec> createState() => _courseSecState();
}

class _courseSecState extends State<courseSec> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tot"),
      ),
      body: Swiper(
        itemBuilder: (context, index){
          return Image.network("https://www.google.com/imgres?imgurl=https%3A%2F%2Fd1whtlypfis84e.cloudfront.net%2Fguides%2Fwp-content%2Fuploads%2F2019%2F08%2F03091106%2FTrees-1024x682.jpg&tbnid=kqx7KJKqHXNnXM&vet=12ahUKEwj2mpnmypOBAxVkoScCHckLCkEQMygFegQIARB-..i&imgrefurl=https%3A%2F%2Fwww.toppr.com%2Fguides%2Fessays%2Ftree-essay%2F&docid=XmIQoO62BceksM&w=1024&h=682&itg=1&q=trees&ved=2ahUKEwj2mpnmypOBAxVkoScCHckLCkEQMygFegQIARB-",fit: BoxFit.fill,);
        },
        itemCount: 4,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}