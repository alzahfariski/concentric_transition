import 'package:flutter/material.dart';

class CardData {
  final String title;
  final String subtitle;
  final Widget image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;

  CardData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
  });
}

class CardUIView extends StatelessWidget {
  const CardUIView({super.key, required this.data});
  final CardData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Flexible(flex: 20, child: data.image),
          const Spacer(),
          Text(
            data.title.toUpperCase(),
            style: TextStyle(
                color: data.titleColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.clip),
            maxLines: 1,
          ),
          const Spacer(),
          Text(
            data.subtitle,
            style: TextStyle(
              color: data.subtitleColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
