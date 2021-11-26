import 'package:flutter/material.dart';

enum MoviesGridItemInfoType {
  title,
  overview,
}

class MoviesGridItemInfo extends StatelessWidget {
  final String info;
  final MoviesGridItemInfoType infoType;

  const MoviesGridItemInfo({
    Key? key,
    required this.info,
    required this.infoType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: TextStyle(
        color: Colors.white,
        fontSize: infoType == MoviesGridItemInfoType.title ? 20 : 15,
        fontWeight: infoType == MoviesGridItemInfoType.title
            ? FontWeight.bold
            : FontWeight.normal,
      ),
      maxLines: infoType == MoviesGridItemInfoType.title ? 1 : 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
