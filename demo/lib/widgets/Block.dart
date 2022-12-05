import 'package:flutter/material.dart';

class BlockInfo extends StatelessWidget {
  final String product;
  
   
  const BlockInfo({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(product),
    );
  }
}