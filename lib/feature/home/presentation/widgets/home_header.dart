import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: CachedNetworkImageProvider(
              'https://picsum.photos/200',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Saujan.',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white,
                        ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Let's find some trending movies.",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.white,
                        ),
                    maxLines: 2,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
