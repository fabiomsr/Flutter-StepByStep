
import 'package:flutter/material.dart';

class FlexibleAppBar extends SliverAppBar {
  static const double height = 256.0;

  FlexibleAppBar(String title, String imageUrl) : super(
    pinned: true,
    expandedHeight: height,
    flexibleSpace: FlexibleSpaceBar(
        title: Text(title),
        background: _buildBackground(imageUrl)
        
    )
  );

  static Widget _buildBackground(String imageUrl) {
    return Stack (
      fit: StackFit.expand,
        children: <Widget>[
            Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: height
            ),

            DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset(0.5, 0.6),
                      end: FractionalOffset(0.5, 1.0),
                      colors: <Color>[Color(0x00000000), Color(0x70000000)]
                  )
                )
            )
        ]
      );
  }

}
